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
:- class(C1), picked_class(C2),
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

% C6: Don't schedule classes that are not enough credits
% WE NEED TO MAKE A SUMMATION TO COUNT # OF CREDITS
:- picked_class(C),
    class_credits(C, CR1)
    min_credits(CR1).

% C7: Don't schedule classes that exceed workload limit (weak constraint because workload field is not always present)
% NEED TO MAKE A SUMMATION TO COMPUTE WORKLOAD
:~ picked_class(C),
    class_workload(C, W1),
    max_workload(W2),
    W2 > W1.

% C8: Don't schedule classes below rating requirment (weak constraint because rating field is not always present)
:~ picked_class(C),
    class_rating(C, R1),
    % Or we could get min rating from user input
    R1 < 3.0.

% C9:
:~ picked_class(C),
    0 = {class_rating(C, R)}.


% C10: Give the student their desired number of classes in each department

% C11: Maximize the number of major requirements satisfied
