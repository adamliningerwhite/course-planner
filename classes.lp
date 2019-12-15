% This file contains a list of generic classes and their info
% We will use this to test basic functionalities of our program

% A list of class departments
dept(csci).
dept(math).
dept(poli).
dept(econ).
dept(hist).
dept(art).
dept(bio).
dept(chem).
dept(engl).
dept(phil).
dept(psyc).

class_num(4).


% OTHER SUBJECT AREAS TO ADD
% 2. Econ (Doug)
% 4. History (Doug)
% 6. Biology (Doug)
% 7. Chemistry (Adam)
% 8. English (Doug)
% 9. Philosophy (Adam)
% 10. Psychology (Doug)

% -----------------------------------------------

% Things that each class needs to have:
%   1. Name
%   2. Start time
%   3. End time (both in military time)
%   4. Meeting days
%   5. Department
%   6. Class prerequisites
%   7. Measure of class dificulty??
%   8. Major/minor requirements

% --------------------------------------------------
% ACTUAL CS CLASSES (ADAM)
%

class(csci051A_01).
class_name(csci051A_01, "Intro to CS with Topics in AI").
class_prof(csci051A_01, "Joseph Osborn").
class_dept(csci051A_01, csci).
% No rating
class_credits(csci051A_01, 10).
class_type(csci051A_01, core).
% No class workload
% No class prerequisites
class_meets(csci051A_01, "Edmunds 101", mon, 1100, 1215).
class_meets(csci051A_01, "Edmunds 101", wed, 1100, 1215).
class_meets(csci051A_01, "Edmunds 219", wed, 1900, 2150).


class(csci051P_01).
class_name(csci051P_01, "Intro to CS in Python with Lab").
class_prof(csci051P_01, "Tzu-Yi Chen").
class_dept(csci051P_01, csci).
% No rating
class_credits(csci051P_01, 10).
class_type(csci051P_01, core).
% No class workload
% No class prerequisites
class_meets(csci051P_01, "Edmunds 114", mon, 1000, 1050).
class_meets(csci051P_01, "Edmunds 114", wed, 1000, 1050).
class_meets(csci051P_01, "Edmunds 114", fri, 1000, 1050).
class_meets(csci051P_01, "Edmunds 219", thurs, 1315, 1600).


class(csci054_01).
class_name(csci054_01, discrete_math_and_functional_programming).
class_prof(csci054_01, "Joseph Osborn").
class_dept(csci054_01, csci).
class_rating(csci054_01, 30).
class_credits(csci054_01, 10).
class_type(csci054_01, core).
% No class workload
% No class prerequisites
class_meets(csci054_01, "Seaver Commons 104", tues, 1315, 1430).
class_meets(csci054_01, "Seaver Commons 104", thurs, 1315, 1430).


class(csci054_02).
class_name(csci054_02, discrete_math_and_functional_programming).
class_prof(csci054_02, "Joseph Osborn").
class_dept(csci054_02, csci).
class_rating(csci054_01, 30).
class_credits(csci054_02, 10).
class_type(csci054_02, core).
% No class workload
% No class prerequisites
class_meets(csci054_02, "Seaver Commons 104", tues, 1445, 1600).
class_meets(csci054_02, "Seaver Commons 104", thurs, 1445, 1600).


class(csci062_01).
class_name(csci062_01, "Data Structures and Advanced Programming").
class_prof(csci062_01, "Alexandra Papoutsaki").
class_dept(csci062_01, csci).
class_rating(csci062_01, 36).
class_credits(csci062_01, 10).
class_type(csci062_01, core).
class_workload(csci062_01, 79).
prerequisite(csci062_01, csci051).
prerequisite(csci062_01, csci054).
class_meets(csci062_01, "Milikan 1249", tues, 1315, 1430).
class_meets(csci062_01, "Milikan 1249", thurs, 1315, 1430).
class_meets(csci062_01, "Edmunds 229", wed, 1315, 1600).


class(csci101_01).
class_name(csci101_01, "Intro to Languages and Theory").
class_prof(csci101_01, "Yuqing Wu").
class_dept(csci101_01, csci).
% No rating
class_credits(csci101_01, 10).
class_type(csci101_01, core).
% No class workload
prerequisite(csci101_01, csci054).
prerequisite(csci101_01, csci062).
class_meets(csci101_01, "Edmunds 114", tues, 1315, 1430).
class_meets(csci101_01, "Edmunds 114", thurs, 1315, 1430).


class(csci101_02).
class_name(csci101_02, "Intro to Languages and Theory").
class_prof(csci101_02, "Yuqing Wu").
class_dept(csci101_02, csci).
% No rating
class_credits(csci101_02, 10).
class_type(csci101_02, core).
% No class workload
prerequisite(csci101_02, csci054).
prerequisite(csci101_02, csci062).
class_meets(csci101_02, "Edmunds 114", tues, 1445, 1600).
class_meets(csci101_02, "Edmunds 114", thurs, 1445, 1600).


class(csci105_01).
class_name(csci105_01, "Computer Systems").
class_prof(csci105_01, "Eleanor Birrell").
class_dept(csci105_01, csci).
class_rating(csci105_01, 34).
class_credits(csci105_01, 10).
class_type(csci105_01, core).
class_workload(csci105_01, 57).
prerequisite(csci105_01, csci062).
class_meets(csci105_01, "Edmunds 101", mon, 1315, 1430).
class_meets(csci105_01, "Edmunds 101", wed, 1315, 1430).
class_meets(csci105_01, "Edmunds 219", mon, 1900, 2015).


class(csci105_02).
class_name(csci105_02, "Computer Systems").
class_prof(csci105_02, "Eleanor Birrell").
class_dept(csci105_02, csci).
class_rating(csci105_02, 34).
class_credits(csci105_02, 10).
class_type(csci105_02, core).
class_workload(csci105_01, 57).
prerequisite(csci105_01, csci062).
class_meets(csci105_02, "Edmunds 101", mon, 1445, 1600).
class_meets(csci105_02, "Edmunds 101", wed, 1445, 1600).
class_meets(csci105_02, "Edmunds 219", mon, 1900, 2015).


class(csci133_01).
class_name(csci133_01, "Database Systems").
class_prof(csci133_01, "Yuqing Wu").
class_dept(csci133_01, csci).
class_rating(csci133_01, 43).
class_credits(csci133_01, 10).
class_type(csci133_01, elective).
class_workload(csci133_01, 40).
prerequisite(csci133_01, csci062).
class_meets(csci133_01, "Edmunds 114", mon, 1100, 1215).
class_meets(csci133_01, "Edmunds 114", wed, 1100, 1215).


class(csci140_01).
class_name(csci140_01, "Algorithms").
class_prof(csci140_01, "Tzu-Yi Chen").
class_dept(csci140_01, csci).
class_rating(csci140_01, 37).
class_credits(csci140_01, 10).
class_type(csci140_01, core).
class_workload(csci140_01, 72).
prerequisite(csci140_01, csci062).
class_meets(csci140_01, "Edmunds 101", tues, 935, 1050).
class_meets(csci140_01, "Edmunds 101", thurs, 935, 1050).


class(csci140_02).
class_name(csci140_02, "Algorithms").
class_prof(csci140_02, "Tzu-Yi Chen").
class_dept(csci140_02, csci).
class_rating(csci140_02, 37).
class_credits(csci140_02, 10).
class_type(csci140_02, core).
class_workload(csci140_02, 72).
prerequisite(csci140_02, csci062).
class_meets(csci140_02, "Edmunds 101", tues, 1100, 1215).
class_meets(csci140_02, "Edmunds 101", thurs, 1100, 1215).


class(csci181N_01).
class_name(csci181N_01, "Advanced Functional Programming").
class_prof(csci181N_01, "Michael Greenberg").
class_dept(csci181N_01, csci).
class_rating(csci181N_01, 50).
class_credits(csci181N_01, 10).
class_type(csci181N_01, elective).
class_workload(csci181N_01, 50).
% No class prerequisites
class_meets(csci181N_01, "Milikan 1249", tues, 935, 1050).
class_meets(csci181N_01, "Milikan 1249", thurs, 935, 1050).


class(csci181U_01).
class_name(csci181U_01, "Building an Internet of Things").
class_prof(csci181U_01, "Geoffrey Brown").
class_dept(csci181U_01, csci).
% No rating
class_credits(csci181U_01, 10).
class_type(csci181U_01, core).
% No class workload
prerequisite(csci181U_01, csci062).
class_meets(csci181U_01, "Lincoln 1135", tues, 935, 1050).
class_meets(csci181U_01, "Lincoln 1135", thurs, 935, 1050).
class_meets(csci181U_01, "Edmunds 105", tues, 1315, 1600).


% --------------------------------------------------
% ACTUAL Politics CLASSES (ADAM)
%

class(poli001B_01).
class_name(poli001B_01, "Modern Political Theory").
class_prof(poli001B_01, "John Seery").
class_dept(poli001B_01, poli).
class_rating(poli001B_01, 35).
class_credits(poli001B_01, 10).
class_type(poli001B_01, core).
class_workload(poli001B_01, 38).
% No prerequisite
class_meets(poli001B_01, "Carnegie 107", mon, 1000, 1050).
class_meets(poli001B_01, "Carnegie 107", wed, 1000, 1050).
class_meets(poli001B_01, "Carnegie 107", fri, 1000, 1050).


class(poli002_01).
class_name(poli002_01, "American Political Thought").
class_prof(poli002_01, "Susan McWilliams").
class_dept(poli002_01, poli).
class_rating(poli002_01, 40).
class_credits(poli002_01, 10).
class_type(poli002_01, core).
class_workload(poli002_01, 35).
% No prerequisite
class_meets(poli002_01, "Carnegie 109", mon, 1100, 1215).
class_meets(poli002_01, "Carnegie 109", wed, 1100, 1215).


class(poli003_01).
class_name(poli003_01, "Intro to American Politics").
class_prof(poli003_01, "David Menefee Libey").
class_dept(poli003_01, poli).
class_rating(poli003_01, 36).
class_credits(poli003_01, 10).
class_type(poli003_01, core).
class_workload(poli003_01, 33).
% No prerequisite
class_meets(poli003_01, "Carnegie 109", mon, 900, 950).
class_meets(poli003_01, "Carnegie 109", wed, 900, 950).
class_meets(poli003_01, "Carnegie 109", wed, 900, 950).


class(poli005_01).
class_name(poli005_01, "Intro to Comparative Politics").
class_prof(poli005_01, "Erica Dobbs").
class_dept(poli005_01, poli).
class_rating(poli005_01, 31).
class_credits(poli005_01, 10).
class_type(poli005_01, core).
class_workload(poli005_01, 40).
% No prerequisite
class_meets(poli005_01, "Carnegie 107", mon, 1315, 1430).
class_meets(poli005_01, "Carnegie 107", wed, 1315, 1430).


class(poli008_01).
class_name(poli008_01, "Intro to International Relations").
class_prof(poli008_01, "Tom Le").
class_dept(poli008_01, poli).
class_rating(poli008_01, 36).
class_credits(poli008_01, 10).
class_type(poli008_01, core).
class_workload(poli008_01, 44).
% No prerequisite
class_meets(poli008_01, "Carnegie 109", tues, 1315, 1430).
class_meets(poli008_01, "Carnegie 109", thurs, 1315, 1430).


class(poli010_01).
class_name(poli010_01, "Political Freedom").
class_prof(poli010_01, "John Seery").
class_dept(poli010_01, poli).
class_rating(poli010_01, 50).
class_credits(poli010_01, 10).
class_type(poli010_01, core).
class_workload(poli010_01, 40).
% No prerequisite
class_meets(poli010_01, "Carnegie 11", tues, 935, 1050).
class_meets(poli010_01, "Carnegie 11", thurs, 935, 1050).


class(poli033B_01).
class_name(poli033B_01, "Amer Constit II: Rights/Liberty").
class_prof(poli033B_01, "Amanda Hollis-Brusky").
class_dept(poli033B_01, poli).
class_rating(poli033B_01, 44).
class_credits(poli033B_01, 10).
class_type(poli033B_01, core).
class_workload(poli033B_01, 42).
% No prerequisite
class_meets(poli033B_01, "Carnegie 109", wed, 1315, 1600).

class(poli060_01).
class_name(poli060_01, "Global Poli of Food/Agriculture").
class_prof(poli060_01, "Heather Williams").
class_dept(poli060_01, poli).
class_rating(poli060_01, 42).
class_credits(poli060_01, 10).
class_type(poli060_01, elective).
class_workload(poli060_01, 60).
% No prerequisite
class_meets(poli060_01, "Hahn 215", thurs, 1315, 1600).


class(poli071_01).
class_name(poli071_01, "NGOs and Transnational Politics").
class_prof(poli071_01, "Heidi Haddad").
class_dept(poli071_01, poli).
class_rating(poli071_01, 42).
class_credits(poli071_01, 10).
class_type(poli071_01, elective).
class_workload(poli071_01, 30).
% No prerequisite
class_meets(poli071_01, "Carnegie 11", tues, 1315, 1430).
class_meets(poli071_01, "Carnegie 11", thurs, 1315, 1430).


class(poli090_01).
class_name(poli090_01, "Statistics").
class_prof(poli090_01, "Pierre Englebert").
class_dept(poli090_01, poli).
class_rating(poli090_01, 43).
class_credits(poli090_01, 10).
class_type(poli090_01, elective).
class_workload(poli090_01, 21).
% No prerequisite
class_meets(poli090_01, "Hahn 101", tues, 1445, 1600).
class_meets(poli090_01, "Hahn 101", thurs, 1445, 1600).


class(poli136_01).
class_name(poli136_01, "Environmental Justice and Policy").
class_prof(poli136_01, "Richard Worthington").
class_dept(poli136_01, poli).
class_rating(poli136_01, 23).
class_credits(poli136_01, 10).
class_type(poli136_01, elective).
class_workload(poli136_01, 33).
prerequisite(poli136_01, poli003).
class_meets(poli136_01, "Carnegie 110", tues, 935, 1050).
class_meets(poli136_01, "Carnegie 110", thurs, 935, 1050).


class(poli142_01).
class_name(poli142_01, "Anti-Democracy in America").
class_prof(poli142_01, "David Menefee-Libey").
class_dept(poli142_01, poli).
% No rating
class_credits(poli142_01, 10).
class_type(poli142_01, core).
% No workload
% No prerequisite
class_meets(poli142_01, "Carnegie 109", tues, 935, 1050).
class_meets(poli142_01, "Carnegie 109", thurs, 935, 1050).


class(poli158_01).
class_name(poli158_01, "Democratic Decay").
class_prof(poli158_01, "Erica Dobbs").
class_dept(poli158_01, poli).
% No rating
class_credits(poli158_01, 10).
class_type(poli158_01, elective).
% No workload
% No class prerequisite
class_meets(poli158_01, "Carnegie 11", tues, 1315, 1430).
class_meets(poli158_01, "Carnegie 11", thurs, 1315, 1430).

class(poli164_01).
class_name(poli164_01, "Adv Questions African Politics").
class_prof(poli164_01, "Pierre Englebert").
class_dept(poli164_01, poli).
class_rating(poli164_01, 45).
class_credits(poli164_01, 10).
class_type(poli164_01, elective).
class_workload(poli164_01, 42).
% No class prerequisite
class_meets(poli164_01, "Hahn 215", tues, 935, 1050).
class_meets(poli164_01, "Hahn 215", thurs, 935, 1050).


class(poli177_01).
class_name(poli177_01, "Sports and Politics").
class_prof(poli177_01, "Tom Le").
class_dept(poli177_01, poli).
% No rating
class_credits(poli177_01, 10).
class_type(poli177_01, elective).
% No workload
% No class prerequisite
class_meets(poli177_01, "Carnegie 11", tues, 1445, 1600).
class_meets(poli177_01, "Carnegie 11", thurs, 1445, 1600).

class(poli189B_01).
class_name(poli189B_01, "Supreme Court in Am. Politics").
class_prof(poli189B_01, "Christopher Krewson").
class_dept(poli189B_01, poli).
% No class rating
class_credits(poli189B_01, 10).
class_type(poli189B_01, core).
% No class workload
% No class prerequisite
class_meets(poli189B_01, "Hahn 101", tues, 1315, 1430).
class_meets(poli189B_01, "Hahn 101", thurs, 1315, 1430).


class(poli189D_01).
class_name(poli189D_01, "Justice, Liberation, Mutual Aid").
class_prof(poli189D_01, "Roberto Sirvent").
class_dept(poli189D_01, poli).
% No class rating
class_credits(poli189D_01, 10).
class_type(poli189D_01, elective).
% No class workload
% No class prerequisite
class_meets(poli189D_01, "Hahn 101", mon, 1100, 1215).
class_meets(poli189D_01, "Hahn 101", wed, 1100, 1215).


class(poli189E_01).
class_name(poli189E_01, "Presidential Politics").
class_prof(poli189E_01, "Roberto Sirvent").
class_dept(poli189E_01, poli).
% No class rating
class_credits(poli189E_01, 10).
class_type(poli189E_01, elective).
% No class workload
% No class prerequisite
class_meets(poli189E_01, "Crookshank 10", mon, 1315, 1600).

class(poli190C_01).
class_name(poli190C_01, "Senior Sem: Contemp Poli/Theory").
class_prof(poli190C_01, "Susan McWilliams").
class_dept(poli190C_01, poli).
% No class rating
class_credits(poli190C_01, 10).
class_type(poli190C_01, elective).
% No class workload
% No class prerequisite
class_meets(poli190C_01, "Carnegie 11", mon, 1315, 1600).


% --------------------------------------------------
% ACTUAL MATH CLASSES (ADAM)
%

class(math001_01).
class_name(math001_01, "Math, Phil & the Real World").
class_prof(math001_01, "Gizem Karaali").
class_dept(math001_01, math).
% No class rating
class_credits(math001_01, 10).
class_type(math001_01, none).
% No class workload
% No class prerequisites
class_meets(math001_01, "Milikan 2141", wed, 1100, 1215).
class_meets(math001_01, "Milikan 2141", fri, 1100, 1215).

class(math030_01).
class_name(math030_01, "Calculus 1").
class_prof(math030_01, "Ami Radunskaya").
class_dept(math030_01, math).
class_rating(math030_01, 33).
class_credits(math030_01, 10).
class_type(math030_01, core).
class_workload(math030_01, 49).
% No class prerequisites
class_meets(math030_01, "Milikan 1021", mon, 900, 950).
class_meets(math030_01, "Milikan 1021", wed, 900, 950).
class_meets(math030_01, "Milikan 1021", fri, 900, 950).


class(math031_01).
class_name(math031_01, "Calculus 2").
class_prof(math031_01, "Ami Radunskaya").
class_dept(math031_01, math).
class_rating(math031_01, 38).
class_credits(math031_01, 10).
class_type(math031_01, core).
class_workload(math031_01, 49).
prerequisite(math031_01, math030).
class_meets(math031_01, "Milikan 1021", mon, 1000, 1050).
class_meets(math031_01, "Milikan 1021", wed, 1000, 1050).
class_meets(math031_01, "Milikan 1021", fri, 1000, 1050).


class(math032_01).
class_name(math032_01, "Calculus 3").
class_prof(math032_01, "Maryann Hohn").
class_dept(math032_01, math).
class_rating(math032_01, 38).
class_credits(math032_01, 10).
class_type(math032_01, core).
class_workload(math032_01, 40).
prerequisite(math032_01, math031).
class_meets(math032_01, "Milikan 2099", tues, 1315, 1430).
class_meets(math032_01, "Milikan 2099", thurs, 1315, 1430).


class(math032_02).
class_name(math032_02, "Calculus 3").
class_prof(math032_02, "Maryann Hohn").
class_dept(math032_02, math).
class_rating(math032_02, 38).
class_credits(math032_02, 10).
class_type(math032_02, core).
class_workload(math032_02, 40).
prerequisite(math032_02, math031).
class_meets(math032_02, "Milikan 2099", tues, 1445, 1600).
class_meets(math032_02, "Milikan 2099", thurs, 1445, 1600).


class(math032S_01).
class_name(math032S_01, "Calc III w/Apps to the Sciences").
class_prof(math032S_01, "Blerta Shtella").
class_dept(math032S_01, math).
class_rating(math032S_01, 40).
class_credits(math032S_01, 10).
class_type(math032S_01, core).
class_workload(math032S_01, 51).
prerequisite(math032S_01, math031).
class_meets(math032S_01, "Milikan 2113", mon, 1100, 1215).
class_meets(math032S_01, "Milikan 2113", wed, 1100, 1215).

class(math058_01).
class_name(math058_01, "Intro to Statistics w/Lab").
class_prof(math058_01, "Jo Hardin").
class_dept(math058_01, math).
class_rating(math058_01, 28).
class_credits(math058_01, 10).
class_type(math058_01, core).
class_workload(math058_01, 38).
% No prerequisites
class_meets(math058_01, "Milikan 2131", tues, 1315, 1430).
class_meets(math058_01, "Milikan 2131", thurs, 1315, 1430).
class_meets(math058_01, "Milikan 2131", wed, 900, 950).


class(math058B_01).
class_name(math058B_01, "Intro to Biostatistics w/Lab").
class_prof(math058B_01, "Jo Hardin").
class_dept(math058B_01, math).
class_rating(math058B_01, 37).
class_credits(math058B_01, 10).
class_type(math058B_01, core).
class_workload(math058B_01, 52).
% No prerequisites
class_meets(math058B_01, "Milikan 2131", tues, 935, 1050).
class_meets(math058B_01, "Milikan 2131", thurs, 935, 1050).
class_meets(math058B_01, "Milikan 2131", fri, 1100, 1150).


class(math060_01).
class_name(math060_01, "Linear Algebra").
class_prof(math060_01, "Shariar Shariari").
class_dept(math060_01, math).
class_rating(math060_01, 44).
class_credits(math060_01, 10).
class_type(math060_01, core).
class_workload(math060_01, 74).
prerequisite(math060_01, math032).
class_meets(math060_01, "Milikan 2131", mon, 1100, 1215).
class_meets(math060_01, "Milikan 2131", wed, 1100, 1215).

class(math060_02).
class_name(math060_02, "Linear Algebra").
class_prof(math060_02, "Ellie Dannenberg").
class_dept(math060_02, math).
class_rating(math060_02, 44).
class_credits(math060_02, 10).
class_type(math060_02, core).
class_workload(math060_02, 74).
prerequisite(math060_02, math032).
class_meets(math060_02, "Milikan 2141", mon, 1315, 1430).
class_meets(math060_02, "Milikan 2141", wed, 1315, 1430).


class(math060_03).
class_name(math060_03, "Linear Algebra").
class_prof(math060_03, "Ghassan Sarkis").
class_dept(math060_03, math).
class_rating(math060_03, 44).
class_credits(math060_03, 10).
class_type(math060_03, core).
class_workload(math060_03, 74).
prerequisite(math060_03, math032).
class_meets(math060_03, "Milikan 2141", tues, 1315, 1430).
class_meets(math060_03, "Milikan 2141", thurs, 1315, 1430).


class(math101_01).
class_name(math101_01, "Intro to Analysis").
class_prof(math101_01, "Edray Goins").
class_dept(math101_01, math).
class_rating(math101_01, 44).
class_credits(math101_01, 10).
class_type(math101_01, core).
class_workload(math101_01, 71).
prerequisite(math101_01, math060).
class_meets(math101_01, "Milikan 2141", mon, 1000, 1050).
class_meets(math101_01, "Milikan 2141", wed, 1000, 1050).
class_meets(math101_01, "Milikan 2141", fri, 1000, 1050).

class(math102_01).
class_name(math102_01, "Differential Equations/Modeling").
class_prof(math102_01, "Maryann Hohn").
class_dept(math102_01, math).
class_rating(math102_01, 31).
class_credits(math102_01, 10).
class_type(math102_01, core).
class_workload(math102_01, 48).
prerequisite(math102_01, math032).
prerequisite(math102_01, math060).
class_meets(math102_01, "Milikan 2141", tues, 935, 1050).
class_meets(math102_01, "Milikan 2141", thurs, 935, 1050).


class(math103_01).
class_name(math103_01, "Combinatorial Mathematics").
class_prof(math103_01, "Shariar Shariari").
class_dept(math103_01, math).
class_rating(math103_01, 46).
class_credits(math103_01, 10).
class_type(math103_01, elective).
class_workload(math103_01, 76).
% no prerequisites
class_meets(math103_01, "Milikan 2131", mon, 1315, 1430).
class_meets(math103_01, "Milikan 2131", wed, 1315, 1430).


class(math135_01).
class_name(math135_01, "Functions of a Complex Variable").
class_prof(math135_01, "Stephan Garcia").
class_dept(math135_01, math).
class_rating(math135_01, 50).
class_credits(math135_01, 10).
class_type(math135_01, elective).
class_workload(math135_01, 80).
prerequisite(math135_01, math032).
prerequisite(math135_01, math060).
prerequisite(math135_01, math101).
class_meets(math135_01, "Milikan 2113", tues, 1315, 1430).
class_meets(math135_01, "Milikan 2113", thurs, 1315, 1430).


class(math147_01).
class_name(math147_01, "Topology").
class_prof(math147_01, "Ellie Dannenberg").
class_dept(math147_01, math).
class_rating(math147_01, 43).
class_credits(math147_01, 10).
class_type(math147_01, elective).
class_workload(math147_01, 76).
prerequisite(math147_01, math131).
class_meets(math147_01, "Milikan 2099", mon, 1100, 1215).
class_meets(math147_01, "Milikan 2099", wed, 1100, 1215).


class(math151_01).
class_name(math151_01, "Probability").
class_prof(math151_01, "Adolfo Rumbos").
class_dept(math151_01, math).
class_rating(math151_01, 36).
class_credits(math151_01, 10).
class_type(math151_01, core).
class_workload(math151_01, 54).
prerequisite(math151_01, math032).
prerequisite(math151_01, math060).
class_meets(math151_01, "Milikan 1051", mon, 900, 950).
class_meets(math151_01, "Milikan 1051", wed, 900, 950).
class_meets(math151_01, "Milikan 1051", fri, 900, 950).


class(math155_01).
class_name(math155_01, "Time Series").
class_prof(math155_01, "Gabe Chandler").
class_dept(math155_01, math).
class_rating(math155_01, 30).
class_credits(math155_01, 10).
class_type(math155_01, elective).
class_workload(math155_01, 40).
prerequisite(math155_01, math032).
prerequisite(math155_01, math058).
class_meets(math155_01, "Milikan 2099", tues, 935, 1050).
class_meets(math155_01, "Milikan 2099", thurs, 935, 1050).


class(math158_01).
class_name(math158_01, "Statistical Linear Models").
class_prof(math158_01, "Gabe Chandler").
class_dept(math158_01, math).
class_rating(math158_01, 46).
class_credits(math158_01, 10).
class_type(math158_01, elective).
class_workload(math158_01, 53).
prerequisite(math158_01, math031).
prerequisite(math158_01, math058).
class_meets(math158_01, "Milikan 1021", tues, 1315, 1430).
class_meets(math158_01, "Milikan 1021", thurs, 1315, 1430).


class(math171_01).
class_name(math171_01, "Abstract Algebra I: Groups & Rings").
class_prof(math171_01, "Ghassan Sarkis").
class_dept(math171_01, math).
class_rating(math171_01, 47).
class_credits(math171_01, 10).
class_type(math171_01, elective).
class_workload(math171_01, 94).
prerequisite(math171_01, math060).
class_meets(math171_01, "Milikan 2141", tues, 1445, 1600).
class_meets(math171_01, "Milikan 2141", thurs, 1445, 1600).


class(math173_01).
class_name(math173_01, "Advanced Linear Algebra").
class_prof(math173_01, "Stephan Garcia").
class_dept(math173_01, math).
class_rating(math173_01, 47).
class_credits(math173_01, 10).
class_type(math173_01, elective).
class_workload(math173_01, 75).
prerequisite(math173_01, math060).
prerequisite(math173_01, math101).
class_meets(math173_01, "Milikan 2113", tues, 935, 1050).
class_meets(math173_01, "Milikan 2113", thurs, 935, 1050).


class(math176_01).
class_name(math176_01, "Algebraic Geometry").
class_prof(math176_01, "Edray Goins").
class_dept(math176_01, math).
% no class rating
class_credits(math176_01, 10).
class_type(math176_01, elective).
% no class workload
prerequisite(math176_01, math171).
class_meets(math176_01, "Milikan 2141", mon, 900, 950).
class_meets(math176_01, "Milikan 2141", wed, 900, 950).
class_meets(math176_01, "Milikan 2141", fri, 900, 950).


class(math180_01).
class_name(math180_01, "Intro to PDEs").
class_prof(math180_01, "Blerta Shtella").
class_dept(math180_01, math).
% no class rating
class_credits(math180_01, 10).
class_type(math180_01, elective).
% no class workload
prerequisite(math180_01, math102).
prerequisite(math180_01, math101).
class_meets(math180_01, "Milikan 2393", mon, 1315, 1430).
class_meets(math180_01, "Milikan 2393", wed, 1315, 1430).


class(math183_01).
class_name(math183_01, "Mathematical Modeling (CP)").
class_prof(math183_01, "Adolfo Rumbos").
class_dept(math183_01, math).
class_rating(math183_01, 40).
class_credits(math183_01, 10).
class_type(math183_01, elective).
class_workload(math183_01, 50).
prerequisite(math183_01, math102).
class_meets(math183_01, "Milikan 2113", mon, 1000, 1050).
class_meets(math183_01, "Milikan 2113", wed, 1000, 1050).
class_meets(math183_01, "Milikan 2113", fri, 1000, 1050).


class(math187_01).
class_name(math187_01, "Deterministic Operations Research").
class_prof(math187_01, "Vin De Silva").
class_dept(math187_01, math).
class_rating(math187_01, 35).
class_credits(math187_01, 10).
class_type(math187_01, elective).
class_workload(math187_01, 56).
prerequisite(math187_01, math032).
prerequisite(math187_01, math060).
class_meets(math187_01, "Milikan 2113", mon, 1445, 1600).
class_meets(math187_01, "Milikan 2113", wed, 1445, 1600).

class(math191_04).
class_name(math191_04, "Senior Thesis in Mathematics").
class_prof(math191_04, "Vin De Silva").
class_dept(math191_04, math).
class_rating(math191_04, 40).
class_credits(math191_04, 5).
class_type(math191_04, core).
class_workload(math191_04, 45).
% No course prerequisites
class_meets(math191_04, "Milikan 1021", fri, 1315, 1430).


% --------------------------------------------------
% ACTUAL ART CLASSES (ADAM)
%

class(art010_01).
class_name(art010_01, "Painting 1").
class_prof(art010_01, "Staff").
class_dept(art010_01, art).
class_rating(art010_01, 40).
class_credits(art010_01, 10).
class_type(art010_01, core).
class_workload(art010_01, 61).
% No course prerequisite
class_meets(art010_01, "Studio Arts, 201", mon, 935, 1205).
class_meets(art010_01, "Studio Arts, 201", wed, 935, 1205).


class(art021_01).
class_name(art021_01, "Foundations of 2D Design").
class_prof(art021_01, "Mark Allen").
class_dept(art021_01, art).
class_rating(art021_01, 45).
class_credits(art021_01, 10).
class_type(art021_01, core).
class_workload(art021_01, 47).
% No course prerequisite
class_meets(art021_01, "Studio Arts, 215", tues, 1315, 1545).
class_meets(art021_01, "Studio Arts, 215", thurs, 1315, 1545).


class(art022_01).
class_name(art022_01, "Video Art").
class_prof(art022_01, "Kimberly Ye").
class_dept(art022_01, art).
% No class rating
class_credits(art022_01, 10).
class_type(art022_01, core).
% No class workload
% No course prerequisite
class_meets(art022_01, "Studio Arts, 118", mon, 1315, 1545).
class_meets(art022_01, "Studio Arts, 118", wed, 1315, 1545).


class(art022_02).
class_name(art022_02, "Video Art").
class_prof(art022_02, "Kimberly Ye").
class_dept(art022_02, art).
% No class rating
class_credits(art022_02, 10).
class_type(art022_02, core).
% No class workload
% No course prerequisite
class_meets(art022_02, "Studio Arts, 118", mon, 1615, 1845).
class_meets(art022_02, "Studio Arts, 118", wed, 1615, 1845).


class(art111_01).
class_name(art111_01, "Topics in Contemporary Painting").
class_prof(art111_01, "Staff").
class_dept(art111_01, art).
class_rating(art111_01, 45).
class_credits(art111_01, 10).
class_type(art111_01, core).
class_workload(art111_01, 55).
prerequisite(art111_01, art010).
class_meets(art111_01, "Studio Arts, 201", mon, 1315, 1545).
class_meets(art111_01, "Studio Arts, 201", wed, 1315, 1545).


class(art114_01).
class_name(art114_01, "Printmaking Studio").
class_prof(art114_01, "Mark Allen").
class_dept(art114_01, art).
% No class rating
class_credits(art114_01, 10).
class_type(art114_01, core).
% No class workload
prerequisite(art114_01, art010).
class_meets(art114_01, "Studio Arts, 215", tues, 935, 1205).
class_meets(art114_01, "Studio Arts, 215", thurs, 935, 1205).



class(art126B_01).
class_name(art126B_01, "Sculpture II-Casting: One & Many").
class_prof(art126B_01, "Michael O'Malley").
class_dept(art126B_01, art).
% No class rating
class_credits(art126B_01, 10).
class_type(art126B_01, core).
% No class workload
% No class prerequisite
class_meets(art126B_01, "Studio Arts, 106", mon, 1315, 1545).
class_meets(art126B_01, "Studio Arts, 106", wed, 1315, 1545).


class(art131_01).
class_name(art131_01, "Sculptural Funct & Concep Design").
class_prof(art131_01, "Michael O'Malley").
class_dept(art131_01, art).
class_rating(art131_01, 50).
class_credits(art131_01, 10).
class_type(art131_01, core).
class_workload(art131_01, 150).
prerequisite(art131_01, art025).
class_meets(art131_01, "Studio Arts, 118", mon, 830, 1100).
class_meets(art131_01, "Studio Arts, 118", wed, 830, 1100).


class(art139_01).
class_name(art139_01, "Sketchbook Pursuits").
class_prof(art139_01, "Mercedes Teixido").
class_dept(art139_01, art).
% No class rating
class_credits(art139_01, 10).
class_type(art139_01, core).
% No class workload
prerequisite(art139_01, art005).
class_meets(art139_01, "Studio Arts, 216", tues, 1315, 1545).
class_meets(art139_01, "Studio Arts, 216", thurs, 1315, 1545).



% --------------------------------------------------
% ACTUAL CHEMISTRY CLASSES (ADAM)
%
class(chem001B_03).
class_name(chem001B_03, "	General Chemistry w/Laboratory").
class_prof(chem001B_03, "Malkiat Johal").
class_dept(chem001B_03, chem).
class_rating(chem001B_03, 37).
class_credits(chem001B_03, 10).
class_type(chem001B_03, core).
class_workload(chem001B_03, 44).
prerequisite(chem001B_03, chem001A).
class_meets(chem001B_03, "Seaver Commons, 102", mon, 1000, 1050).
class_meets(chem001B_03, "Seaver Commons, 102", wed, 1000, 1050).
class_meets(chem001B_03, "Seaver Commons, 102", fri, 1000, 1050).

class(chem001B_04).
class_name(chem001B_04, "	General Chemistry w/Laboratory").
class_prof(chem001B_04, "Roberto Garza-Lopez").
class_dept(chem001B_04, chem).
class_rating(chem001B_04, 37).
class_credits(chem001B_04, 10).
class_type(chem001B_04, core).
class_workload(chem001B_04, 44).
prerequisite(chem001B_04, chem001A).
class_meets(chem001B_04, "Seaver Commons, 102", mon, 900, 950).
class_meets(chem001B_04, "Seaver Commons, 102", wed, 900, 950).
class_meets(chem001B_04, "Seaver Commons, 102", fri, 900, 950).

class(chem110B_01).
class_name(chem110B_01, "Organic Chemistry w/Laboratory").
class_prof(chem110B_01, "Daniel O'Leary").
class_dept(chem110B_01, chem).
class_rating(chem110B_01, 34).
class_credits(chem110B_01, 10).
class_type(chem110B_01, core).
class_workload(chem110B_01, 94).
prerequisite(chem110B_01, chem001B).
class_meets(chem110B_01, "Seaver North Lab Aud", mon, 800, 850).
class_meets(chem110B_01, "Seaver North Lab Aud", wed, 800, 850).
class_meets(chem110B_01, "Seaver North Lab Aud", fri, 800, 850).

class(chem110B_02).
class_name(chem110B_02, "Organic Chemistry w/Laboratory").
class_prof(chem110B_02, "Daniel O'Leary").
class_dept(chem110B_02, chem).
class_rating(chem110B_02, 34).
class_credits(chem110B_02, 10).
class_type(chem110B_02, core).
class_workload(chem110B_02, 94).
prerequisite(chem110B_02, chem001B).
class_meets(chem110B_02, "Seaver North Lab Aud", mon, 900, 950).
class_meets(chem110B_02, "Seaver North Lab Aud", wed, 900, 950).
class_meets(chem110B_02, "Seaver North Lab Aud", fri, 900, 950).


class(chem112_01).
class_name(chem112_01, "Analysis Scientific Literature").
class_prof(chem112_01, "Jane Liu").
class_dept(chem112_01, chem).
class_rating(chem112_01, 50).
class_credits(chem112_01, 10).
class_type(chem112_01, none).
class_workload(chem112_01, 20).
prerequisite(chem112_01, chem110A).
class_meets(chem112_01, "Seaver Commons 103", tues, 935, 1050).
class_meets(chem112_01, "Seaver Commons 103", thurs, 935, 1050).


class(chem115_01).
class_name(chem115_01, "Biochemistry w/Laboratory").
class_prof(chem115_01, "Jane Liu").
class_dept(chem115_01, chem).
class_rating(chem115_01, 40).
class_credits(chem115_01, 10).
class_type(chem115_01, core).
class_workload(chem115_01, 51).
prerequisite(chem115_01, chem110A).
class_meets(chem115_01, "Seaver Commons 103", tues, 810, 925).
class_meets(chem115_01, "Seaver Commons 103", thurs, 810, 925).


class(chem147_01).
class_name(chem147_01, "Inorganic Chemistry with Lab").
class_prof(chem147_01, "Nicholas Ball").
class_dept(chem147_01, chem).
class_rating(chem147_01, 30).
class_credits(chem147_01, 10).
class_type(chem147_01, core).
class_workload(chem147_01, 30).
prerequisite(chem147_01, chem110A).
class_meets(chem147_01, "Seaver North 202", mon, 1000, 1050).
class_meets(chem147_01, "Seaver North 202", wed, 1000, 1050).
class_meets(chem147_01, "Seaver North 202", fri, 1000, 1050).

class(chem156_01).
class_name(chem156_01, "Physical Chem in Molecular Biol").
class_prof(chem156_01, "Malkiat Johal").
class_dept(chem156_01, chem).
class_rating(chem156_01, 30).
class_credits(chem156_01, 10).
class_type(chem156_01, elective).
class_workload(chem156_01, 43).
prerequisite(chem156_01, chem110B).
class_meets(chem156_01, "Seaver North 111", mon, 1100, 1150).
class_meets(chem156_01, "Seaver North 111", wed, 1100, 1150).
class_meets(chem156_01, "Seaver North 111", fri, 1100, 1150).


class(chem158B_01).
class_name(chem158B_01, "Physical Chemistry w/ Laboratory").
class_prof(chem158B_01, "Roberto Garza-Lopez").
class_dept(chem158B_01, chem).
class_rating(chem158B_01, 27).
class_credits(chem158B_01, 10).
class_type(chem158B_01, core).
class_workload(chem158B_01, 29).
prerequisite(chem158B_01, chem158A).
class_meets(chem158B_01, "Seaver North Lab 202", mon, 1100, 1150).
class_meets(chem158B_01, "Seaver North Lab 202", wed, 1100, 1150).
class_meets(chem158B_01, "Seaver North Lab 202", fri, 1100, 1150).


class(chem164_01).
class_name(chem164_01, "Computational Chemistry").
class_prof(chem164_01, "Torsten Fiebig").
class_dept(chem164_01, chem).
% No rating data
class_credits(chem164_01, 5).
class_type(chem164_01, core).
% No workload.
prerequisite(chem164_01, chem158A).
class_meets(chem164_01, "Seaver North Lab 202", tues, 935, 1050).
class_meets(chem164_01, "Seaver North Lab 202", thurs, 935, 1050).


class(chem180_01).
class_name(chem180_01, "Advanced Biochemistry").
class_prof(chem180_01, "Matthew Sazinsky").
class_dept(chem180_01, chem).
class_rating(chem180_01, 43).
class_credits(chem180_01, 10).
class_type(chem180_01, elective).
class_workload(chem180_01, 38).
prerequisite(chem180_01, chem115).
class_meets(chem180_01, "Seaver North Lab 111", tues, 935, 1050).
class_meets(chem180_01, "Seaver North Lab 111", thurs, 935, 1050).
