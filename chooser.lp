% Our schedule chooser.
%
% This file generates valid schedules from the master list of classes
% and makes sure that the student's scheduling preferences are
% satisfied (if possible).
% We make sure not to include previously taken classes or violate class
% prerequisites. Additionally, our program seeks to maximize the number
% of major requirements fulfilled each semester.
%


% Should this number be coming from a different file?
#const class_num = 4.

% Pick the student's classes
class_num {pick(Code, Name, Prof, Area) : class(Code, Name, Prof, Area)} class_num.

% The maximum number of classes to add to the schedule set
#const class_num = 4.

% Make a schedule set with class_num number of classes
class_num {pick(C) : class(C)} class_num.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%        Schedule Constraints       %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% C: Don't schedule the same class twice (every class must be unique)
:- class(C1), class(C2),
    C1 = C2.

% C: Don't schedule two classes on the same day at the same time (no overlap)
:- class(C1), class(C2),
    class_meets(C1, Loc1, Day1, Start1, End1),
    class_meets(C2, Loc2, Day2, Start2, End2),
    Day1 = Day2, % Both classes meet on the same day
    not (End1 < Start2; End2 < Start1). % Class times overlap

% C: Don't schedule classes when busy
:- class(C), 
    class_meets(C, Loc, Day1, Start1, End1),
    busy(Day2, Start2, End2),
    Day1 = Day2, % Class and busy on the same day
    not (End1 < Start2, End2 < Start1).

% Helper for prerequisites contrains
% Satisfied if all prerequisites are met
%satisfied(R) :- taken(C),
%                prerequisite(C, R).

% C: Don't schedule classes if you don't have the prerequisites
%:- class(C), not satisfied(R).

:- picked(C), prerequisite(C, P), not taken(P).

% C: Don't schedule classes that are not wanted
:- class(C1),
    unwanted_class(C2),
    C1 = C2.

% C: Don't schedule classes from this department
:- class(C),
    class_dept(C, D1),
    unwanted_dept(D2),
    D1 = D2.

% C: Don't schedule classes with unwanted professor
:- class(C),
    class_prof(C, P1),
    unwanted_prof(P2),
    P1 = P2.

% C: Don't schedule classes that are not enough credits
:- class(C),
    class_credits(C, CR1)
    min_credits(CR1)

% C: Don't schedule classes that exceed workload limit (weak constraint because workload field is not always present)
:~ class(C), 
    class_workload(C, W1),
    max_workload(W2),
    W2 > W1.

% C: Don't schedule classes below rating requirment (weak constraint because rating field is not always present)
:~ class(C),
    class_rating(C, R1),
    min_rating(R2),
    R1 < R2.

:~ class(C),
    0 = {class_rating(C, R)}.











%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%        Schedule Constraints       %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%---------------------------------------
% SCHEDULING CONSTRAINTS

% C1: Don't allow class times to overlap
:- pick(Code1, _name, _prof, _area), pick(Code2, _name, _prof, _area),
  meets(Code1, _location, Day1, Start1, End1),
  meets(Code2, _location, Day2, Start2, End2),
  Day1 = Day2,
  % Two classes do not overlap if one ends before the other starts or starts after the other ends
  not (End1 < Start2 ; Start1 > End2).

% C2: Give the student their desired number of classes in each department

% C3: Make sure that no prerequisites are violated

% C4: Make sure that schedules don't include previously taken classes

% C5: Maximize the number of major requirements satisfied
