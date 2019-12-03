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
