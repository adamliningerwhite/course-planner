% Our schedule chooser.
%
% This file generates valid schedules from the master list of classes
% and makes sure that the student's scheduling preferences are
% satisfied (if possible).
% We make sure not to include previously taken classes or violate class
% prerequisites. Additionally, our program seeks to maximize the number
% of major requirements fulfilled each semester.
%


% Make a schedule set with class_num number of classes
% Class num comes from student input
Num {picked_class(C) : class(C)} Num :- class_num(Num).

 % meets_at(C, Day, Start, End) :- picked_class(C), class_meets(C, _, Day, Start, End).
 % picked_name(Name) :- picked_class(C), class_name(C, Name).
 % picked_workload(H) :- picked_class(C), class_workload(C, H).
 % picked_rating(R) :- picked_class(C), class_rating(C, R).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%        Schedule Constraints       %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% C1: Don't schedule two classes with the same name
:- picked_class(C1), picked_class(C2), class_name(C1, Name1), class_name(C2, Name2), C1 != C2, Name1 = Name2.

% --------------------------------------------------------------------------

% C2: Don't schedule two classes on the same day at the same time (no overlap)
:- picked_class(C1), picked_class(C2), C1 != C2,
    class_meets(C1, Loc1, Day1, Start1, End1),
    class_meets(C2, Loc2, Day2, Start2, End2),
    Day1 = Day2, % Both classes meet on the same day
    End1 >= Start2, End2 >= Start1. % Class times overlap

% --------------------------------------------------------------------------

% C3: Don't schedule classes when busy
:- picked_class(C),
    class_meets(C, Loc, Day1, Start1, End1),
    busy(Day2, Start2, End2),
    Day1 = Day2, % Class and busy on the same day
    End1 >= Start2, End2 >= Start1.

% --------------------------------------------------------------------------

% C4: Make sure that no prerequisites are violated
:- picked_class(C), prerequisite(C, P), not taken(P).

% --------------------------------------------------------------------------

% C5: Don't schedule classes that we've already taken
:- picked_class(C), taken(C).

% --------------------------------------------------------------------------

% C6: Make sure our chosen schedule has enough credits (Scrapped)
% % Calculate the number of credits in our current schedule
% schedule_credits(Creds) :-
%   Creds = #sum {
%     Cr, Cl : picked_class(Cl), class_credits(Cl, Cr)
%   }.
% Make sure we've picked enough credits
% :- schedule_credits(Cr1), min_credits(Cr2), Cr1 < Cr2.

% --------------------------------------------------------------------------

% C7: Don't schedule classes that exceed workload limit

% Prefer classes for which there is workload data
:~ picked_class(C),
    0 = { class_workload(C, H) }. [1@1]

% Calculate the hrs work/week for our current schedule
schedule_workload(Hrs) :-
  Hrs = #sum{
    H, C : picked_class(C), class_workload(C, H)
  }.
% Make sure our schedule doesn't have too many hours of work
:~ schedule_workload(Hrs), max_workload(Max), Hrs > Max. [1@1]

% --------------------------------------------------------------------------

% C8: Don't schedule classes below rating requirment

% Prefer classes which have rating datapoint
:~ picked_class(C),
   0 = {class_rating(C, R)}. [1@0]

% Then prefer classes which don't violate min rating standards
:~ picked_class(C),
    class_rating(C, R1),
    min_rating(R2),
    R1 < R2. [1@0]

% --------------------------------------------------------------------------

% C9: Give the student their desired number of classes in each department
% % Calculate the number of classes assigned for each department
dept_num(Dept, Num) :-
  dept(Dept),
  Num = #sum{
    1, C : picked_class(C), class_dept(C, Dept)
  }.
% Make sure that the assigned number per department matches the desired number
:- dept_num(Dept1, Num1), desired_dept(Dept2, Num2), Dept1 = Dept2, Num1 != Num2.

% --------------------------------------------------------------------------

% C10: Don't pick any classes from forbidden departments
:- picked_class(C), class_dept(C, D1), forbidden_dept(D2), D1 = D2.

% --------------------------------------------------------------------------

% C11: Make sure we're satisfying the desired number of core major requirements
core_assigned(Dept, Num) :-
  dept(Dept),
  Num = #sum {
    1, C : picked_class(C), class_dept(C, Dept), class_type(C, core)
  }.
:- major(Dept), core_assigned(Dept, Num1), core_num(Num2), Num1 < Num2.

% --------------------------------------------------------------------------

% C12: Make sure we're satisfying the desired number of elective major requirements
electives_assigned(Dept, Num) :-
  dept(Dept),
  Num = #sum {
    1, C : picked_class(C), class_dept(C, Dept), class_type(C, elective)
  }.
:- major(Dept), electives_assigned(Dept, Num1), elective_num(Dept, Num2), Num1 < Num2.

% --------------------------------------------------------------------------

% C13: Make sure we don't schedule too many classes on one day
day_num(Day, Num) :-
  day(Day),
  Num = #sum {
    1, C : picked_class(C), class_meets(C, _Loc, Day, _Start, _End)
  }.
:- day_num(Day, Num1), day_max(Num2), Num1 > Num2.


% --------------------------------------------------------------------------
% C14: Optimize schedules to maximize total rating across all assigned classes
rating_sum(Num) :-
  Num = #sum {
    R, C : picked_class(C), class_rating(C, R)
}.
#maximize{Num@1:rating_sum(Num)}.
