% This file uses the student's schedule preferences and
% the list of available classes to automatically generate a schedule


% Should this number be coming from a different file?
#const class_num = 4.

% Pick the student's classes
class_num {pick(Class) : class(Class)} class_num.



%---------------------------------------
% ADD CONSTRAINTS

% C1: Don't allow class times to overlap
:- pick(C1), pick(C2),
  meets(C1, Day1, Start1, End1),
  meets(C2, Day2, Start2, End2),
  Day1 = Day2,
  % Two classes do not overlap if one ends before the other starts or starts after the other ends
  not (End1 < Start2 ; Start1 > End2).

% C2: Give the student their desired number of classes in each department

% C3: Make sure that no prerequisites are violated

% C4: 
