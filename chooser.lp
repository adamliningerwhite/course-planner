% Our schedule chooser.
%
% This file generates valid schedules from the master list of classes
% and makes sure that the student's scheduling preferences are
% satisfied (if possible).
% We make sure not to include previously taken classes or violate class
% prerequisites. Additionally, our program seeks to maximize the number
% of major requirements fulfilled each semester.
%

% The maximum number of classes to add to the schedule set
#const class_num = 4.

% Make a schedule set with class_num number of classes
class_num {picked_class(C) : class(C)} class_num.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%        Schedule Constraints       %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% C1: Don't schedule the same class twice (every class must be unique)
:- picked_class(C1), picked_class(C2),
    C1 = C2.

% C2: Don't schedule two classes on the same day at the same time (no overlap)
:- picked_class(C1), picked_class(C2),
    class_meets(C1, Loc1, Day1, Start1, End1),
    class_meets(C2, Loc2, Day2, Start2, End2),
    Day1 = Day2, % Both classes meet on the same day
    not (End1 < Start2; End2 < Start1). % Class times overlap

% C3: Don't schedule classes when busy
:- picked_class(C),
    class_meets(C, Loc, Day1, Start1, End1),
    busy(Day2, Start2, End2),
    Day1 = Day2, % Class and busy on the same day
    not (End1 < Start2, End2 < Start1).

% C4: Make sure that no prerequisites are violated
:- picked_class(C), prerequisite(C, P), not taken(P).

% C5: Don't schedule classes that we've already taken
:- picked_class(C), taken(C).

% C6: Make sure our chosen schedule has enough credits
% Calculate the number of credits in our current schedule
schedule_credits(Creds) :-
  Creds = #sum {
    Cr : picked_class(Cl), class_credits(Cl, Cr)
  }.
% Make sure we've picked enough credits
:- schedule_credits(Cr1), min_credits(Cr2), Cr1 < Cr2.


% C7: Don't schedule classes that exceed workload limit (weak constraint because workload field is not always present)
% Calculate the hrs work/week for our current schedule
schedule_workload(Hrs) :-
  Hrs = #sum{
    H : picked_class(Cl), class_workload(Cl, H)
  }.
% Make sure our schedule doesn't have too many hours of work
:- schedule_workload(Hrs), max_workload(Max), Hrs > Max.


% C8: Don't schedule classes below rating requirment (weak constraint because rating field is not always present)
:~ picked_class(C),
    class_rating(C, R1),
    min_rating(R2),
    R1 < R2.

% C9: Not totally sure what this constraint does (ask Osborn or Doug)
:~ picked_class(C),
    0 = {class_rating(C, R)}.

% C10: Give the student their desired number of classes in each department
% Calculate the number of classes assigned for each department
dept_num(Dept, Num) :-
  Num = #sum{
    1 : picked_class(C), class_dept(C, Dept)
  }.
% Make sure that the assigned number per department matches the desired number
:- dept_num(Dept1, Num1), desired_num(Dept2, Num2), Dept1 = Dept2, not (Num1 = Num2).

% C11: Don't pick any classes from forbidden departments
:- picked_class(C), class_dept(C, D1), forbidden_dept(D2), D1 = D2.

% C12: Make sure we're satisfying the desired number of core major requirements
core_assigned(Dept, Num) :-
  Num = #sum {
    1 : picked_class(C), class_dept(C, Dept), class_type(C, core)
  }.
:- major(Dept), core_assigned(Dept, Num1), core_num(Dept, Num2), not (Num1 = Num2).


% C13: Make sure we're satisfying the desired number of elective major requirements
electives_assigned(Dept, Num) :-
  Num = #sum {
    1 : picked_class(C), class_dept(C, Dept), class_type(C, elective)
  }.
:- major(Dept), electives_assigned(Dept, Num1), elective_num(Dept, Num2), not (Num1 = Num2).
