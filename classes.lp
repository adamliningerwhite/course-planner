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
% ACTUAL CS CLASSES (ADAM)
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
class_name(csci062_01, "Data Structures and Advanced Programming").
class_prof(csci062_01, "Alexandra Papoutsaki").
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
class_name(csci101_01, "Intro to Languages and Theory").
class_prof(csci101_01, "Yuqing Wu").
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
class_name(csci101_02, "Intro to Languages and Theory").
class_prof(csci101_02, "Yuqing Wu").
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
class_name(csci105_01, "Computer Systems").
class_prof(csci105_01, "Eleanor Birrell").
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
class_name(csci105_02, "Computer Systems").
class_prof(csci105_02, "Eleanor Birrell").
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
class_name(csci133_01, "Database Systems").
class_prof(csci133_01, "Yuqing Wu").
class_dept(csci133_01, csci).
class_rating(csci133_01, 4.3).
class_credits(csci133_01, 1.0).
class_type(csci133_01, elective).
class_workload(csci133_01, 4.0).
prerequisite(csci133_01, csci062).
class_meets(csci133_01, "Edmunds 114", mon, 11.00, 12.15).
class_meets(csci133_01, "Edmunds 114", wed, 11.00, 12.15).


class(csci140_01).
class_name(csci140_01, "Algorithms").
class_prof(csci140_01, "Tzu-Yi Chen").
class_dept(csci140_01, csci).
class_rating(csci140_01, 3.7).
class_credits(csci140_01, 1.0).
class_type(csci140_01, core).
class_workload(csci140_01, 7.2).
prerequisite(csci140_01, csci062).
class_meets(csci140_01, "Edmunds 101", tues, 9.35, 10.50).
class_meets(csci140_01, "Edmunds 101", thurs, 9.35, 10.50).


class(csci140_02).
class_name(csci140_02, "Algorithms").
class_prof(csci140_02, "Tzu-Yi Chen").
class_dept(csci140_02, csci).
class_rating(csci140_02, 3.7).
class_credits(csci140_02, 1.0).
class_type(csci140_02, core).
class_workload(csci140_02, 7.2).
prerequisite(csci140_02, csci062).
class_meets(csci140_02, "Edmunds 101", tues, 11.00, 12.15).
class_meets(csci140_02, "Edmunds 101", thurs, 11.00, 12.15).


class(csci181N_01).
class_name(csci181N_01, "Advanced Functional Programming").
class_prof(csci181N_01, "Michael Greenberg").
class_dept(csci181N_01, csci).
class_rating(csci181N_01, 5.0).
class_credits(csci181N_01, 1.0).
class_type(csci181N_01, core).
class_workload(csci181N_01, 5.0).
% No class prerequisites
class_meets(csci181N_01, "Milikan 1249", tues, 9.35, 10.50).
class_meets(csci181N_01, "Milikan 1249", thurs, 9.35, 10.50).


class(csci181U_01).
class_name(csci181U_01, "Building an Internet of Things").
class_prof(csci181U_01, "Geoffrey Brown").
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
% ACTUAL Politics CLASSES (ADAM)
%

class(poli001B_01).
class_name(poli001B_01, "Modern Political Theory").
class_prof(poli001B_01, "John Seery").
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
class_prof(poli002_01, "Susan McWilliams").
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
class_prof(poli003_01, "David Menefee Libey").
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
class_prof(poli005_01, "Erica Dobbs").
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
class_prof(poli008_01, "Tom Le").
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
class_prof(poli010_01, "John Seery").
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
class_prof(poli033B_01, "Amanda Hollis-Brusky").
class_dept(poli033B_01, poli).
class_rating(poli033B_01, 4.4).
class_credits(poli033B_01, 1.0).
class_type(poli033B_01, core).
class_workload(poli033B_01, 4.2).
% No prerequisite
class_meets(poli033B_01, "Carnegie 109", wed, 1.15, 4.00).

class(poli060_01).
class_name(poli060_01, "Global Poli of Food/Agriculture").
class_prof(poli060_01, "Heather Williams").
class_dept(poli060_01, poli).
class_rating(poli060_01, 4.2).
class_credits(poli060_01, 1.0).
class_type(poli060_01, elective).
class_workload(poli060_01, 6.0).
% No prerequisite
class_meets(poli060_01, "Hahn 215", thurs, 1.15, 4.00).


class(poli071_01).
class_name(poli071_01, "NGOs and Transnational Politics").
class_prof(poli071_01, "Heidi Haddad").
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
class_prof(poli090_01, "Pierre Englebert").
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
class_prof(poli136_01, "Richard Worthington").
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
class_prof(poli142_01, "David Menefee-Libey").
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
class_prof(poli158_01, "Erica Dobbs").
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
class_prof(poli164_01, "Pierre Englebert").
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
class_prof(poli177_01, "Tom Le").
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
class_prof(poli189B_01, "Christopher Krewson").
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
class_prof(poli189D_01, "Roberto Sirvent").
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
class_prof(poli189E_01, "Roberto Sirvent").
class_dept(poli189E_01, poli).
% No class rating
class_credits(poli189E_01, 1.0).
class_type(poli189E_01, elective).
% No class workload
% No class prerequisite
class_meets(poli189E_01, "Crookshank 10", mon, 1.15, 4.00).

class(poli190C_01).
class_name(poli190C_01, "Senior Sem: Contemp Poli/Theory").
class_prof(poli190C_01, "Susan McWilliams").
class_dept(poli190C_01, poli).
% No class rating
class_credits(poli190C_01, 1.0).
class_type(poli190C_01, elective).
% No class workload
% No class prerequisite
class_meets(poli190C_01, "Carnegie 11", mon, 1.15, 4.00).


% --------------------------------------------------
% ACTUAL MATH CLASSES (ADAM)
%

class(math001_01).
class_name(math001_01, "Math, Phil & the Real World").
class_prof(math001_01, "Gizem Karaali").
class_dept(math001_01, math).
% No class rating
class_credits(math001_01, 1.0).
class_type(math001_01, none).
% No class workload
% No class prerequisites
class_meets(math001_01, "Milikan 2141", wed, 11.00, 12.15).
class_meets(math001_01, "Milikan 2141", fri, 11.00, 12.15).

class(math030_01).
class_name(math030_01, "Calculus 1").
class_prof(math030_01, "Ami Radunskaya").
class_dept(math030_01, math).
class_rating(math030_01, 3.3).
class_credits(math030_01, 1.0).
class_type(math030_01, core).
class_workload(math030_01, 4.9).
% No class prerequisites
class_meets(math030_01, "Milikan 1021", mon, 9.0, 9.50).
class_meets(math030_01, "Milikan 1021", wed, 9.0, 9.50).
class_meets(math030_01, "Milikan 1021", fri, 9.0, 9.50).


class(math031_01).
class_name(math031_01, "Calculus 2").
class_prof(math031_01, "Ami Radunskaya").
class_dept(math031_01, math).
class_rating(math031_01, 3.8).
class_credits(math031_01, 1.0).
class_type(math031_01, core).
class_workload(math031_01, 4.9).
prerequisite(math031_01, math030).
class_meets(math031_01, "Milikan 1021", mon, 10.0, 10.50).
class_meets(math031_01, "Milikan 1021", wed, 10.0, 10.50).
class_meets(math031_01, "Milikan 1021", fri, 10.0, 10.50).


class(math032_01).
class_name(math032_01, "Calculus 3").
class_prof(math032_01, "Maryann Hohn").
class_dept(math032_01, math).
class_rating(math032_01, 3.8).
class_credits(math032_01, 1.0).
class_type(math032_01, core).
class_workload(math032_01, 4.0).
prerequisite(math032_01, math031).
class_meets(math032_01, "Milikan 2099", tues, 1.15, 2.30).
class_meets(math032_01, "Milikan 2099", thurs, 1.15, 2.30).


class(math032_02).
class_name(math032_02, "Calculus 3").
class_prof(math032_02, "Maryann Hohn").
class_dept(math032_02, math).
class_rating(math032_02, 3.8).
class_credits(math032_02, 1.0).
class_type(math032_02, core).
class_workload(math032_02, 4.0).
prerequisite(math032_02, math031).
class_meets(math032_02, "Milikan 2099", tues, 2.45, 4.00).
class_meets(math032_02, "Milikan 2099", thurs, 2.45, 4.00).


class(math032S_01).
class_name(math032S_01, "Calc III w/Apps to the Sciences").
class_prof(math032S_01, "Blerta Shtella").
class_dept(math032S_01, math).
class_rating(math032S_01, 4.0).
class_credits(math032S_01, 1.0).
class_type(math032S_01, core).
class_workload(math032S_01, 5.1).
prerequisite(math032S_01, math031).
class_meets(math032S_01, "Milikan 2113", mon, 11.0, 12.15).
class_meets(math032S_01, "Milikan 2113", wed, 11.0, 12.15).

class(math058_01).
class_name(math058_01, "Intro to Statistics w/Lab").
class_prof(math058_01, "Jo Hardin").
class_dept(math058_01, math).
class_rating(math058_01, 2.8).
class_credits(math058_01, 1.0).
class_type(math058_01, core).
class_workload(math058_01, 3.8).
% No prerequisites
class_meets(math058_01, "Milikan 2131", tues, 1.15, 2.30).
class_meets(math058_01, "Milikan 2131", thurs, 1.15, 2.30).
class_meets(math058_01, "Milikan 2131", wed, 9.0, 9.50).


class(math058B_01).
class_name(math058B_01, "Intro to Biostatistics w/Lab").
class_prof(math058B_01, "Jo Hardin").
class_dept(math058B_01, math).
class_rating(math058B_01, 3.7).
class_credits(math058B_01, 1.0).
class_type(math058B_01, core).
class_workload(math058B_01, 5.2).
% No prerequisites
class_meets(math058B_01, "Milikan 2131", tues, 9.35, 10.50).
class_meets(math058B_01, "Milikan 2131", thurs, 9.35, 10.50).
class_meets(math058B_01, "Milikan 2131", fri, 11.0, 11.50).


class(math060_01).
class_name(math060_01, "Linear Algebra").
class_prof(math060_01, "Shariar Shariari").
class_dept(math060_01, math).
class_rating(math060_01, 4.4).
class_credits(math060_01, 1.0).
class_type(math060_01, core).
class_workload(math060_01, 7.4).
prerequisite(math060_01, math032).
class_meets(math060_01, "Milikan 2131", mon, 11.0, 12.15).
class_meets(math060_01, "Milikan 2131", wed, 11.0, 12.15).

class(math060_02).
class_name(math060_02, "Linear Algebra").
class_prof(math060_02, "Ellie Dannenberg").
class_dept(math060_02, math).
class_rating(math060_02, 4.4).
class_credits(math060_02, 1.0).
class_type(math060_02, core).
class_workload(math060_02, 7.4).
prerequisite(math060_02, math032).
class_meets(math060_02, "Milikan 2141", mon, 1.15, 2.30).
class_meets(math060_02, "Milikan 2141", wed, 1.15, 2.30).


class(math060_03).
class_name(math060_03, "Linear Algebra").
class_prof(math060_03, "Ghassan Sarkis").
class_dept(math060_03, math).
class_rating(math060_03, 4.4).
class_credits(math060_03, 1.0).
class_type(math060_03, core).
class_workload(math060_03, 7.4).
prerequisite(math060_03, math032).
class_meets(math060_03, "Milikan 2141", tues, 1.15, 2.30).
class_meets(math060_03, "Milikan 2141", thurs, 1.15, 2.30).


class(math101_01).
class_name(math101_01, "Intro to Analysis").
class_prof(math101_01, "Edray Goins").
class_dept(math101_01, math).
class_rating(math101_01, 4.4).
class_credits(math101_01, 1.0).
class_type(math101_01, core).
class_workload(math101_01, 7.1).
prerequisite(math101_01, math060).
class_meets(math101_01, "Milikan 2141", mon, 10.0, 10.50).
class_meets(math101_01, "Milikan 2141", wed, 10.0, 10.50).
class_meets(math101_01, "Milikan 2141", fri, 10.0, 10.50).

class(math102_01).
class_name(math102_01, "Differential Equations/Modeling").
class_prof(math102_01, "Maryann Hohn").
class_dept(math102_01, math).
class_rating(math102_01, 3.1).
class_credits(math102_01, 1.0).
class_type(math102_01, core).
class_workload(math102_01, 4.8).
prerequisite(math102_01, math032).
prerequisite(math102_01, math060).
class_meets(math102_01, "Milikan 2141", tues, 9.35, 10.50).
class_meets(math102_01, "Milikan 2141", thurs, 9.35, 10.50).


class(math103_01).
class_name(math103_01, "Combinatorial Mathematics").
class_prof(math103_01, "Shariar Shariari").
class_dept(math103_01, math).
class_rating(math103_01, 4.6).
class_credits(math103_01, 1.0).
class_type(math103_01, elective).
class_workload(math103_01, 7.6).
% no prerequisites
class_meets(math103_01, "Milikan 2131", mon, 1.15, 2.30).
class_meets(math103_01, "Milikan 2131", wed, 1.15, 2.30).


class(math135_01).
class_name(math135_01, "Functions of a Complex Variable").
class_prof(math135_01, "Stephan Garcia").
class_dept(math135_01, math).
class_rating(math135_01, 5.0).
class_credits(math135_01, 1.0).
class_type(math135_01, elective).
class_workload(math135_01, 8.0).
prerequisite(math135_01, math032).
prerequisite(math135_01, math060).
prerequisite(math135_01, math101).
class_meets(math135_01, "Milikan 2113", tues, 1.15, 2.30).
class_meets(math135_01, "Milikan 2113", thurs, 1.15, 2.30).


class(math147_01).
class_name(math147_01, "Topology").
class_prof(math147_01, "Ellie Dannenberg").
class_dept(math147_01, math).
class_rating(math147_01, 4.3).
class_credits(math147_01, 1.0).
class_type(math147_01, elective).
class_workload(math147_01, 7.6).
prerequisite(math147_01, math131).
class_meets(math147_01, "Milikan 2099", mon, 11.0, 12.15).
class_meets(math147_01, "Milikan 2099", wed, 11.0, 12.15).


class(math151_01).
class_name(math151_01, "Probability").
class_prof(math151_01, "Adolfo Rumbos").
class_dept(math151_01, math).
class_rating(math151_01, 3.6).
class_credits(math151_01, 1.0).
class_type(math151_01, core).
class_workload(math151_01, 5.4).
prerequisite(math151_01, math032).
prerequisite(math151_01, math060).
class_meets(math151_01, "Milikan 1051", mon, 9.0, 9.50).
class_meets(math151_01, "Milikan 1051", wed, 9.0, 9.50).
class_meets(math151_01, "Milikan 1051", fri, 9.0, 9.50).


class(math155_01).
class_name(math155_01, "Time Series").
class_prof(math155_01, "Gabe Chandler").
class_dept(math155_01, math).
class_rating(math155_01, 3.0).
class_credits(math155_01, 1.0).
class_type(math155_01, elective).
class_workload(math155_01, 4.0).
prerequisite(math155_01, math032).
prerequisite(math155_01, math058).
class_meets(math155_01, "Milikan 2099", tues, 9.35, 10.50).
class_meets(math155_01, "Milikan 2099", thurs, 9.35, 10.50).


class(math158_01).
class_name(math158_01, "Statistical Linear Models").
class_prof(math158_01, "Gabe Chandler").
class_dept(math158_01, math).
class_rating(math158_01, 4.6).
class_credits(math158_01, 1.0).
class_type(math158_01, elective).
class_workload(math158_01, 5.3).
prerequisite(math158_01, math031).
prerequisite(math158_01, math058).
class_meets(math158_01, "Milikan 1021", tues, 1.15, 2.30).
class_meets(math158_01, "Milikan 1021", thurs, 1.15, 2.30).


class(math171_01).
class_name(math171_01, "Abstract Algebra I: Groups & Rings").
class_prof(math171_01, "Ghassan Sarkis").
class_dept(math171_01, math).
class_rating(math171_01, 4.7).
class_credits(math171_01, 1.0).
class_type(math171_01, elective).
class_workload(math171_01, 9.4).
prerequisite(math171_01, math060).
class_meets(math171_01, "Milikan 2141", tues, 2.45, 4.00).
class_meets(math171_01, "Milikan 2141", thurs, 2.45, 4.00).


class(math173_01).
class_name(math173_01, "Advanced Linear Algebra").
class_prof(math173_01, "Stephan Garcia").
class_dept(math173_01, math).
class_rating(math173_01, 4.7).
class_credits(math173_01, 1.0).
class_type(math173_01, elective).
class_workload(math173_01, 7.5).
prerequisite(math173_01, math060).
prerequisite(math173_01, math101).
class_meets(math173_01, "Milikan 2113", tues, 9.35, 10.50).
class_meets(math173_01, "Milikan 2113", thurs, 9.35, 10.50).


class(math176_01).
class_name(math176_01, "Algebraic Geometry").
class_prof(math176_01, "Edray Goins").
class_dept(math176_01, math).
% no class rating
class_credits(math176_01, 1.0).
class_type(math176_01, elective).
% no class workload
prerequisite(math176_01, math171).
class_meets(math176_01, "Milikan 2141", mon, 9.00, 9.50).
class_meets(math176_01, "Milikan 2141", wed, 9.00, 9.50).
class_meets(math176_01, "Milikan 2141", fri, 9.00, 9.50).


class(math180_01).
class_name(math180_01, "Intro to PDEs").
class_prof(math180_01, "Blerta Shtella").
class_dept(math180_01, math).
% no class rating
class_credits(math180_01, 1.0).
class_type(math180_01, elective).
% no class workload
prerequisite(math180_01, math102).
prerequisite(math180_01, math101).
class_meets(math180_01, "Milikan 2393", mon, 1.15, 2.30).
class_meets(math180_01, "Milikan 2393", wed, 1.15, 2.30).


class(math183_01).
class_name(math183_01, "Mathematical Modeling (CP)").
class_prof(math183_01, "Adolfo Rumbos").
class_dept(math183_01, math).
class_rating(math183_01, 4.0).
class_credits(math183_01, 1.0).
class_type(math183_01, elective).
class_workload(math183_01, 5.0)
prerequisite(math183_01, math102).
class_meets(math183_01, "Milikan 2113", mon, 10.0, 10.50).
class_meets(math183_01, "Milikan 2113", wed, 10.0, 10.50).
class_meets(math183_01, "Milikan 2113", fri, 10.0, 10.50).


class(math187_01).
class_name(math187_01, "Deterministic Operations Research").
class_prof(math187_01, "Vin De Silva").
class_dept(math187_01, math).
class_rating(math187_01, 3.5).
class_credits(math187_01, 1.0).
class_type(math187_01, elective).
class_workload(math187_01, 5.6)
prerequisite(math187_01, math032).
prerequisite(math187_01, math060).
class_meets(math187_01, "Milikan 2113", mon, 2.45, 4.00).
class_meets(math187_01, "Milikan 2113", wed, 2.45, 4.00).

class(math191_04).
class_name(math191_04, "Senior Thesis in Mathematics").
class_prof(math191_04, "Vin De Silva").
class_dept(math191_04, math).
class_rating(math191_04, 4.0).
class_credits(math191_04, 0.5).
class_type(math191_04, core).
class_workload(math191_04, 4.5).
% No course prerequisites
class_meets(math191_04, "Milikan 1021", fri, 1.15, 2.30).


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
