% This file contains a list of generic classes and their info
% We will use this to test basic functionalities of our program

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

class(csci051A_01).
class_name(csci051A_01, "Intro to CS with Topics in AI").
class_prof(csci051A_01, "Joseph Osborn").
class_dept(csci051A_01, csci).
% No rating
class_credits(csci051A_01, 1.0).
class_type(csci051A_01, core).
% No class workload
% No class prerequisites
class_meets(csci051A_01, "Edmunds 101", mon, 11.00, 12.15).
class_meets(csci051A_01, "Edmunds 101", wed, 11.00, 12.15).
class_meets(csci051A_01, "Edmunds 219", wed, 7.00, 9.50).


class(csci051P_01).
class_name(csci051P_01, "Intro to CS in Python with Lab").
class_prof(csci051P_01, "Tzu-Yi Chen").
class_dept(csci051P_01, csci).
% No rating
class_credits(csci051P_01, 1.0).
class_type(csci051P_01, core).
% No class workload
% No class prerequisites
class_meets(csci051P_01, "Edmunds 114", mon, 10.00, 10.50).
class_meets(csci051P_01, "Edmunds 114", wed, 10.00, 10.50).
class_meets(csci051P_01, "Edmunds 114", fri, 10.00, 10.50).
class_meets(csci051P_01, "Edmunds 219", thurs, 1.15, 4.00).


class(csci054_01).
class_name(csci054_01, "Discrete Math and Functional Programming").
class_prof(csci054_01, "Joseph Osborn").
class_dept(csci054_01, csci).
class_rating(csci054_01, 3.0).
class_credits(csci054_01, 1.0).
class_type(csci054_01, core).
% No class workload
% No class prerequisites
class_meets(csci054_01, "Seaver Commons 104", tues, 1.15, 2.30).
class_meets(csci054_01, "Seaver Commons 104", thurs, 1.15, 2.30).


class(csci054_02).
class_name(csci054_02, "Discrete Math and Functional Programming").
class_prof(csci054_02, "Joseph Osborn").
class_dept(csci054_02, csci).
class_rating(csci054_01, 3.0).
class_credits(csci054_02, 1.0).
class_type(csci054_02, core).
% No class workload
% No class prerequisites
class_meets(csci054_02, "Seaver Commons 104", tues, 2.45, 3.00).
class_meets(csci054_02, "Seaver Commons 104", thurs, 2.45, 3.00).


class(csci062_01).
class_name("Data Structures and Advanced Programming").
class_prof("Alexandra Papoutsaki").
class_dept(csci062_01, csci).
class_rating(csci062_01, 3.6).
class_credits(csci062_01, 1.0).
class_type(csci062_01, core).
class_workload(csci062_01, 7.9).
prerequisite(csci062_01, csci051).
prerequisite(csci062_01, csci054).
class_meets(csci062_01, "Milikan 1249", tues, 1.15, 2.30).
class_meets(csci062_01, "Milikan 1249", thurs, 1.15, 2.30).
class_meets(csci062_01, "Edmunds 229", wed, 1.15, 4.00).


class(csci101_01).
class_name("Intro to Languages and Theory").
class_prof("Yuqing Wu").
class_dept(csci101_01, csci).
% No rating
class_credits(csci101_01, 1.0).
class_type(csci101_01, core).
% No class workload
prerequisite(csci101_01, csci054).
prerequisite(csci101_01, csci062).
class_meets(csci101_01, "Edmunds 114", tues, 1.15, 2.30).
class_meets(csci101_01, "Edmunds 114", thurs, 1.15, 2.30).


class(csci101_02).
class_name("Intro to Languages and Theory").
class_prof("Yuqing Wu").
class_dept(csci101_02, csci).
% No rating
class_credits(csci101_02, 1.0).
class_type(csci101_02, core).
% No class workload
prerequisite(csci101_02, csci054).
prerequisite(csci101_02, csci062).
class_meets(csci101_02, "Edmunds 114", tues, 2.45, 4.00).
class_meets(csci101_02, "Edmunds 114", thurs, 2.45, 4.00).


class(csci105_01).
class_name("Computer Systems").
class_prof("Eleanor Birrell").
class_dept(csci105_01, csci).
class_rating(csci105_01, 3.4).
class_credits(csci105_01, 1.0).
class_type(csci105_01, core).
class_workload(csci105_01, 5.7).
prerequisite(csci105_01, csci062).
class_meets(csci105_01, "Edmunds 101", mon, 1.15, 2.30).
class_meets(csci105_01, "Edmunds 101", wed, 1.15, 2.30).
class_meets(csci105_01, "Edmunds 219", mon, 7.00, 8.15).


class(csci105_02).
class_name("Computer Systems").
class_prof("Eleanor Birrell").
class_dept(csci105_02, csci).
class_rating(csci105_02, 3.4).
class_credits(csci105_02, 1.0).
class_type(csci105_02, core).
class_workload(csci105_01, 5.7).
prerequisite(csci105_01, csci062).
class_meets(csci105_02, "Edmunds 101", mon, 2.45, 4.00).
class_meets(csci105_02, "Edmunds 101", wed, 2.45, 4.00).
class_meets(csci105_02, "Edmunds 219", mon, 7.00, 8.15).


class(csci133_01).
class_name("Database Systems").
class_prof("Yuqing Wu").
class_dept(csci133_01, csci).
class_rating(csci133_01, 4.3).
class_credits(csci133_01, 1.0).
class_type(csci133_01, elective).
class_workload(csci133_01, 4.0).
prerequisite(csci133_01, csci062).
class_meets(csci133_01, "Edmunds 114", mon, 11.00, 12.15).
class_meets(csci133_01, "Edmunds 114", wed, 11.00, 12.15).


class(csci140_01).
class_name("Algorithms").
class_prof("Tzu-Yi Chen").
class_dept(csci140_01, csci).
class_rating(csci140_01, 3.7).
class_credits(csci140_01, 1.0).
class_type(csci140_01, core).
class_workload(csci140_01, 7.2).
prerequisite(csci140_01, csci062).
class_meets(csci140_01, "Edmunds 101", tues, 9.35, 10.50).
class_meets(csci140_01, "Edmunds 101", thurs, 9.35, 10.50).


class(csci140_02).
class_name("Algorithms").
class_prof("Tzu-Yi Chen").
class_dept(csci140_02, csci).
class_rating(csci140_02, 3.7).
class_credits(csci140_02, 1.0).
class_type(csci140_02, core).
class_workload(csci140_02, 7.2).
prerequisite(csci140_02, csci062).
class_meets(csci140_02, "Edmunds 101", tues, 11.00, 12.15).
class_meets(csci140_02, "Edmunds 101", thurs, 11.00, 12.15).


class(csci181N_01).
class_name("Advanced Functional Programming").
class_prof("Michael Greenberg").
class_dept(csci181N_01, csci).
class_rating(csci181N_01, 5.0).
class_credits(csci181N_01, 1.0).
class_type(csci181N_01, core).
class_workload(csci181N_01, 5.0).
% No class prerequisites
class_meets(csci181N_01, "Milikan 1249", tues, 9.35, 10.50).
class_meets(csci181N_01, "Milikan 1249", thurs, 9.35, 10.50).


class(csci181U_01).
class_name("Building an Internet of Things").
class_prof("Geoffrey Brown").
class_dept(csci181U_01, csci).
% No rating
class_credits(csci181U_01, 1.0).
class_type(csci181U_01, core).
% No class workload
prerequisite(csci181U_01, csci062).
class_meets(csci181U_01, "Lincoln 1135", tues, 9.35, 10.50).
class_meets(csci181U_01, "Lincoln 1135", thurs, 9.35, 10.50).
class_meets(csci181U_01, "Edmunds 105", tues, 1.15, 4.00).


% --------------------------------------------------
% ACTUAL Politics CLASSES
%

class(poli001B_01).
class_name(poli001B_01, "Modern Political Theory").
class_prof("John Seery").
class_dept(poli001B_01, poli).
class_rating(poli001B_01, 3.5).
class_credits(poli001B_01, 1.0).
class_type(poli001B_01, core).
class_workload(poli001B_01, 3.8).
% No prerequisite
class_meets(poli001B_01, "Carnegie 107", mon, 10.0, 10.50).
class_meets(poli001B_01, "Carnegie 107", wed, 10.0, 10.50).
class_meets(poli001B_01, "Carnegie 107", fri, 10.0, 10.50).


class(poli002_01).
class_name(poli002_01, "American Political Thought").
class_prof("Susan McWilliams").
class_dept(poli002_01, poli).
class_rating(poli002_01, 4.0).
class_credits(poli002_01, 1.0).
class_type(poli002_01, core).
class_workload(poli002_01, 3.5).
% No prerequisite
class_meets(poli002_01, "Carnegie 109", mon, 11.0, 12.15).
class_meets(poli002_01, "Carnegie 109", wed, 11.0, 12.15).


class(poli003_01).
class_name(poli003_01, "Intro to American Politics").
class_prof("David Menefee Libey").
class_dept(poli003_01, poli).
class_rating(poli003_01, 3.6).
class_credits(poli003_01, 1.0).
class_type(poli003_01, core).
class_workload(poli003_01, 3.3).
% No prerequisite
class_meets(poli003_01, "Carnegie 109", mon, 9.0, 9.50).
class_meets(poli003_01, "Carnegie 109", wed, 9.0, 9.50).
class_meets(poli003_01, "Carnegie 109", wed, 9.0, 9.50).


class(poli005_01).
class_name(poli005_01, "Intro to Comparative Politics").
class_prof("Erica Dobbs").
class_dept(poli005_01, poli).
class_rating(poli005_01, 3.1).
class_credits(poli005_01, 1.0).
class_type(poli005_01, core).
class_workload(poli005_01, 4.0).
% No prerequisite
class_meets(poli005_01, "Carnegie 107", mon, 1.15, 2.30).
class_meets(poli005_01, "Carnegie 107", wed, 1.15, 2.30).


class(poli008_01).
class_name(poli008_01, "Intro to International Relations").
class_prof("Tom Le").
class_dept(poli008_01, poli).
class_rating(poli008_01, 3.6).
class_credits(poli008_01, 1.0).
class_type(poli008_01, core).
class_workload(poli008_01, 4.4).
% No prerequisite
class_meets(poli008_01, "Carnegie 109", tues, 1.15, 2.30).
class_meets(poli008_01, "Carnegie 109", thurs, 1.15, 2.30).


class(poli010_01).
class_name(poli010_01, "Political Freedom").
class_prof("John Seery").
class_dept(poli010_01, poli).
class_rating(poli010_01, 5.0).
class_credits(poli010_01, 1.0).
class_type(poli010_01, core).
class_workload(poli010_01, 4.0).
% No prerequisite
class_meets(poli010_01, "Carnegie 11", tues, 9.35, 10.50).
class_meets(poli010_01, "Carnegie 11", thurs, 9.35, 10.50).


class(poli033B_01).
class_name(poli033B_01, "Amer Constit II: Rights/Liberty").
class_prof("Amanda Hollis-Brusky").
class_dept(poli033B_01, poli).
class_rating(poli033B_01, 4.4).
class_credits(poli033B_01, 1.0).
class_type(poli033B_01, core).
class_workload(poli033B_01, 4.2).
% No prerequisite
class_meets(poli033B_01, "Carnegie 109", wed, 1.15, 4.00).

class(poli060_01).
class_name(poli060_01, "Global Poli of Food/Agriculture").
class_prof("Heather Williams").
class_dept(poli060_01, poli).
class_rating(poli060_01, 4.2).
class_credits(poli060_01, 1.0).
class_type(poli060_01, elective).
class_workload(poli060_01, 6.0).
% No prerequisite
class_meets(poli060_01, "Hahn 215", thurs, 1.15, 4.00).


class(poli071_01).
class_name(poli071_01, "NGOs and Transnational Politics").
class_prof("Heidi Haddad").
class_dept(poli071_01, poli).
class_rating(poli071_01, 4.2).
class_credits(poli071_01, 1.0).
class_type(poli071_01, elective).
class_workload(poli071_01, 3.0).
% No prerequisite
class_meets(poli071_01, "Carnegie 11", tues, 1.15, 2.30).
class_meets(poli071_01, "Carnegie 11", thurs, 1.15, 2.30).


class(poli090_01).
class_name(poli090_01, "Statistics").
class_prof("Pierre Englebert").
class_dept(poli090_01, poli).
class_rating(poli090_01, 4.3).
class_credits(poli090_01, 1.0).
class_type(poli090_01, elective).
class_workload(poli090_01, 2.1).
% No prerequisite
class_meets(poli090_01, "Hahn 101", tues, 2.45, 4.00).
class_meets(poli090_01, "Hahn 101", thurs, 2.45, 4.00).


class(poli136_01).
class_name(poli136_01, "Environmental Justice and Policy").
class_prof("Richard Worthington").
class_dept(poli136_01, poli).
class_rating(poli136_01, 2.3).
class_credits(poli136_01, 1.0).
class_type(poli136_01, elective).
class_workload(poli136_01, 3.3).
prerequisite(poli136_01, poli003).
class_meets(poli136_01, "Carnegie 110", tues, 9.35, 10.50).
class_meets(poli136_01, "Carnegie 110", thurs, 9.35, 10.50).


class(poli142_01).
class_name(poli142_01, "Anti-Democracy in America").
class_prof("David Menefee-Libey").
class_dept(poli142_01, poli).
% No rating
class_credits(poli142_01, 1.0).
class_type(poli142_01, core).
% No workload
% No prerequisite
class_meets(poli142_01, "Carnegie 109", tues, 9.35, 10.50).
class_meets(poli142_01, "Carnegie 109", thurs, 9.35, 10.50).


class(poli158_01).
class_name(poli158_01, "Democratic Decay").
class_prof("Erica Dobbs").
class_dept(poli158_01, poli).
% No rating
class_credits(poli158_01, 1.0).
class_type(poli158_01, elective).
% No workload
% No class prerequisite
class_meets(poli158_01, "Carnegie 11", tues, 1.15, 2.30).
class_meets(poli158_01, "Carnegie 11", thurs, 1.15, 2.30).

class(poli164_01).
class_name(poli164_01, "Adv Questions African Politics").
class_prof("Pierre Englebert").
class_dept(poli164_01, poli).
class_rating(poli164_01, 4.5).
class_credits(poli164_01, 1.0).
class_type(poli164_01, elective).
class_workload(poli164_01, 4.2).
% No class prerequisite
class_meets(poli164_01, "Hahn 215", tues, 9.35, 10.50).
class_meets(poli164_01, "Hahn 215", thurs, 9.35, 10.50).


class(poli177_01).
class_name(poli177_01, "Sports and Politics").
class_prof("Tom Le").
class_dept(poli177_01, poli).
% No rating
class_credits(poli177_01, 1.0).
class_type(poli177_01, elective).
% No workload
% No class prerequisite
class_meets(poli177_01, "Carnegie 11", tues, 2.45, 4.00).
class_meets(poli177_01, "Carnegie 11", thurs, 2.45, 4.00).

class(poli189B_01).
class_name(poli189B_01, "Supreme Court in Am. Politics").
class_prof("Christopher Krewson").
class_dept(poli189B_01, poli).
% No class rating
class_credits(poli189B_01, 1.0).
class_type(poli189B_01, core).
% No class workload
% No class prerequisite
class_meets(poli189B_01, "Hahn 101", tues, 1.15, 2.30).
class_meets(poli189B_01, "Hahn 101", thurs, 1.15, 2.30).


class(poli189D_01).
class_name(poli189D_01, "Justice, Liberation, Mutual Aid").
class_prof("Roberto Sirvent").
class_dept(poli189D_01, poli).
% No class rating
class_credits(poli189D_01, 1.0).
class_type(poli189D_01, elective).
% No class workload
% No class prerequisite
class_meets(poli189D_01, "Hahn 101", mon, 11.00, 12.15).
class_meets(poli189D_01, "Hahn 101", wed, 11.00, 12.15).


class(poli189E_01).
class_name(poli189E_01, "Presidential Politics").
class_prof("Roberto Sirvent").
class_dept(poli189E_01, poli).
% No class rating
class_credits(poli189E_01, 1.0).
class_type(poli189E_01, elective).
% No class workload
% No class prerequisite
class_meets(poli189E_01, "Crookshank 10", mon, 1.15, 4.00).

class(poli190C_01).
class_name(poli190C_01, "Senior Sem: Contemp Poli/Theory").
class_prof("Susan McWilliams").
class_dept(poli190C_01, poli).
% No class rating
class_credits(poli190C_01, 1.0).
class_type(poli190C_01, elective).
% No class workload
% No class prerequisite
class_meets(poli190C_01, "Carnegie 11", mon, 1.15, 4.00).


% OTHER SUBJECT AREAS TO ADD
% 2. Econ (Doug).
% 3. Math (Adam)
% 4. History (Doug)
% 5. Art (Adam)
% 6. Biology (Doug)
% 7. Chemistry (Adam)
% 8. English (Doug)
% 9. Philosophy (Adam)
% 10. Psychology (Doug)
