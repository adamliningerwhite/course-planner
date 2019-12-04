% This file contains a list of generic classes and their info
% We will use this to test basic functionalities of our program

department(csci)
department(math)
department(science)
department(soc_science)
department(humanities)
department(art)

% -----------------------------------------------

% Things that each class needs to have:
%   1. Name
%   2. Start time
%   3. End time (both in military time)
%   4. Meeting days
%   5. Department
%
% TODO Class prerequisites
% TODO Measure of class dificulty??
% TODO Major/minor requirements

% --------------------------------------------------
% ACTUAL CS CLASSES
%

class(csci051A_01)
class_name(csci051A_01, "Intro to CS with Topics in AI")
class_prof(csci051A_01, "Joseph Osborn")
class_dept(csci051A_01, csci)
% No rating
class_credits(csci051A_01, 1.0)
class_type(csci051A_01, core)
% No class workload
% No class prerequisites
class_meets(csci051A_01, "Edmunds 101", mon, 11.00, 12.15)
class_meets(csci051A_01, "Edmunds 101", wed, 11.00, 12.15)
class_meets(csci051A_01, "Edmunds 219", wed, 7.00, 9.50)


class(csci051P_01, "Intro to CS in Python with Lab", "Tzu-Yi Chen", csci)
class_meets(csci051P_01, "Edmunds 114", mon, 10.00, 10.50)
class_meets(csci051P_01, "Edmunds 114", wed, 10.00, 10.50)
class_meets(csci051P_01, "Edmunds 114", fri, 10.00, 10.50)
class_meets(csci051P_01, "Edmunds 219", thurs, 1.15, 4.00)


class(csci054_01, "Discrete Math and Functional Programming", "Joseph Osborn", csci)
class_meets(csci054_01, "Seaver Commons 104", tues, 1.15, 2.30)
class_meets(csci054_01, "Seaver Commons 104", thurs, 1.15, 2.30)


class(csci054_02, "Discrete Math and Functional Programming", "Joseph Osborn", csci)
class_meets(csci054_02, "Seaver Commons 104", tues, 2.45, 3.00)
class_meets(csci054_02, "Seaver Commons 104", thurs, 2.45, 3.00)


class(csci062_01, "Data Structures and Advanced Programming", "Alexandra Papoutsaki", csci)
class_meets(csci062_01, "Milikan 1249", tues, 1.15, 2.30)
class_meets(csci062_01, "Milikan 1249", thurs, 1.15, 2.30)
class_meets(csci062_01, "Edmunds 229", wed, 1.15, 4.00)


class(csci101_01, "Intro to Languages and Theory", "Yuqing Wu", csci)
class_meets(csci101_01, "Edmunds 114", tues, 1.15, 2.30)
class_meets(csci101_01, "Edmunds 114", thurs, 1.15, 2.30)


class(csci101_02, "Intro to Languages and Theory", "Yuqing Wu", csci)
class_meets(csci101_02, "Edmunds 114", tues, 2.45, 4.00)
class_meets(csci101_02, "Edmunds 114", thurs, 2.45, 4.00)


class(csci105_01, "Computer Systems", "Eleanor Birrell", csci)
class_meets(csci105_01, "Edmunds 101", mon, 1.15, 2.30)
class_meets(csci105_01, "Edmunds 101", wed, 1.15, 2.30)
class_meets(csci105_01, "Edmunds 219", mon, 7.00, 8.15)


class(csci105_02, "Computer Systems", "Eleanor Birrell", csci)
class_meets(csci105_02, "Edmunds 101", mon, 2.45, 4.00)
class_meets(csci105_02, "Edmunds 101", wed, 2.45, 4.00)
class_meets(csci105_02, "Edmunds 219", mon, 7.00, 8.15)


class(csci133_01, "Database Systems", "Yuqing Wu", csci)
class_meets(csci133_01, "Edmunds 114", mon, 11.00, 12.15)
class_meets(csci133_01, "Edmunds 114", wed, 11.00, 12.15)


class(csci140_01, "Algorithms", "Tzu-Yi Chen", csci)
class_meets(csci140_01, "Edmunds 101", tues, 9.35, 10.50)
class_meets(csci140_01, "Edmunds 101", thurs, 9.35, 10.50)


class(csci140_02, "Algorithms", "Tzu-Yi Chen", csci)
class_meets(csci140_02, "Edmunds 101", tues, 11.00, 12.15)
class_meets(csci140_02, "Edmunds 101", thurs, 11.00, 12.15)


class(csci181N_01, "Advanced Functional Programming", "Michael Greenberg", csci)
class_meets(csci181N_01, "Milikan 1249", tues, 9.35, 10.50)
class_meets(csci181N_01, "Milikan 1249", thurs, 9.35, 10.50)


class(csci181U_01, "Building an Internet of Things", "Geoffrey Brown", csci)
class_meets(csci181U_01, "Lincoln 1135", tues, 9.35, 10.50)
class_meets(csci181U_01, "Lincoln 1135", thurs, 9.35, 10.50)
class_meets(csci181U_01, "Edmunds 105", tues, 1.15, 4.00)



% OTHER SUBJECT AREAS TO ADD
% 1. Politics (Adam)
% 2. Econ (Doug)
% 3. Math (Adam)
% 4. History (Doug)
% 5. Art (Adam)
% 6. Biology (Doug)
% 7. Chemistry (Adam)
% 8. English (Doug)
% 9. Philosophy (Adam)
% 10. Psychology (Doug)
