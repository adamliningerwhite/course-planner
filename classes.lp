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

class(csci051A_01, "Intro to CS with Topics in AI", "Joseph Osborn", csci)
meets(csci051A_01, "Edmunds 101", mon, 11.00, 12.15)
meets(csci051A_01, "Edmunds 101", wed, 11.00, 12.15)
meets(csci051A_01, "Edmunds 219", wed, 7.00, 9.50)

class(csci051P_01, "Intro to CS in Python with Lab", "Tzu-Yi Chen", csci)
meets(csci051P_01, "Edmunds 114", mon, 10.00, 10.50)
meets(csci051P_01, "Edmunds 114", wed, 10.00, 10.50)
meets(csci051P_01, "Edmunds 114", fri, 10.00, 10.50)
meets(csci051P_01, "Edmunds 219", thurs, 1.15, 4.00)

class(csci054_01, "Discrete Math and Functional Programming", "Joseph Osborn", csci)
meets(csci054_01, "Seaver Commons 104", tues, 1.15, 2.30)
meets(csci054_01, "Seaver Commons 104", thurs, 1.15, 2.30)

class(csci054_02, "Discrete Math and Functional Programming", "Joseph Osborn", csci)
meets(csci054_02, "Seaver Commons 104", tues, 2.45, 3.00)
meets(csci054_02, "Seaver Commons 104", thurs, 2.45, 3.00)

class(csci062_01, "Data Structures and Advanced Programming", "Alexandra Papoutsaki", csci)
meets(csci062_01, "Milikan 1249", tues, 1.15, 2.30)
meets(csci062_01, "Milikan 1249", thurs, 1.15, 2.30)
meets(csci062_01, "Edmunds 229", wed, 1.15, 4.00)

class(csci101_01, "Intro to Languages and Theory", "Yuqing Wu", csci)
meets(csci101_01, "Edmunds 114", tues, 1.15, 2.30)
meets(csci101_01, "Edmunds 114", thurs, 1.15, 2.30)

class(csci101_02, "Intro to Languages and Theory", "Yuqing Wu", csci)
meets(csci101_02, "Edmunds 114", tues, 2.45, 4.00)
meets(csci101_02, "Edmunds 114", thurs, 2.45, 4.00)

class(csci105_01, "Computer Systems", "Eleanor Birrell", csci)
meets(csci105_01, "Edmunds 101", mon, 1.15, 2.30)
meets(csci105_01, "Edmunds 101", wed, 1.15, 2.30)
meets(csci105_01, "Edmunds 219", mon, 7.00, 8.15)

class(csci105_02, "Computer Systems", "Eleanor Birrell", csci)
meets(csci105_02, "Edmunds 101", mon, 2.45, 4.00)
meets(csci105_02, "Edmunds 101", wed, 2.45, 4.00)
meets(csci105_02, "Edmunds 219", mon, 7.00, 8.15)

class(csci133_01, "Database Systems", "Yuqing Wu", csci)
meets(csci133_01, "Edmunds 114", mon, 11.00, 12.15)
meets(csci133_01, "Edmunds 114", wed, 11.00, 12.15)

class(csci140_01, "Algorithms", "Tzu-Yi Chen", csci)
meets(csci140_01, "Edmunds 101", tues, 9.35, 10.50)
meets(csci140_01, "Edmunds 101", thurs, 9.35, 10.50)

class(csci140_02, "Algorithms", "Tzu-Yi Chen", csci)
meets(csci140_02, "Edmunds 101", tues, 11.00, 12.15)
meets(csci140_02, "Edmunds 101", thurs, 11.00, 12.15)

class(csci181N_01, "Advanced Functional Programming", "Michael Greenberg", csci)
meets(csci181N_01, "Milikan 1249", tues, 9.35, 10.50)
meets(csci181N_01, "Milikan 1249", thurs, 9.35, 10.50)

class(csci181U_01, "Building an Internet of Things", "Geoffrey Brown", csci)
meets(csci181U_01, "Lincoln 1135", tues, 9.35, 10.50)
meets(csci181U_01, "Lincoln 1135", thurs, 9.35, 10.50)
meets(csci181U_01, "Edmunds 105", tues, 1.15, 4.00)



% --------------------------------------------------
% GENERIC CLASSES
%

% GENERIC MATH CLASSES
% MWF Classes
class(math101_1, "Intro to Addition", "Vin De Silva", math)
meets(math101_1, "Milikan 4", mon, 9.0, 9.83)
meets(math101_1, "Milikan 4", wed, 9.0, 9.83)
meets(math101_1, "Milikan 4", fri, 9.0, 9.83)

class(math101_2, "Intro to Subtraction", "Ellie Dannenberg", math)
meets(math101_2, "Milikan 5", mon, 10.0, 10.83)
meets(math101_2, "Milikan 5", wed, 10.0, 10.83)
meets(math101_2, "Milikan 5", fri, 10.0, 10.83)

class(math101_3, "Intro to Division", "Adolfo Rumbos", math)
meets(math101_3, "Milikan 6", mon, 11.0, 11.83)
meets(math101_3, "Milikan 6", wed, 11.0, 11.83)
meets(math101_3, "Milikan 6", fri, 11.0, 11.83)

% MW classes
class(math101_4, "Intro to Multiplication", "Jo Hardin", math)
meets(math101_4, "Milikan 7", mon, 13.0, 14.5)
meets(math101_4, "Milikan 7", wed, 13.0, 14.5)

class(math101_5, "Calculators 101", "Gabe Chandler", math)
meets(math101_5, "Milikan 8", mon, 14.75, 16.0)
meets(math101_5, "Milikan 8", wed, 14.75, 16.0)

% T,TH Classes
class(math101_6, "How to Properly Tip", "Stephan Garcia", math)
meets(math101_6, "Milikan 9", tues, 8.0, 9.25)
meets(math101_6, "Milikan 9", thurs, 8.0, 9.25)

class(math101_7, "Poker Theory", "shahriar shahriari", math)
meets(math101_7, "Milikan 10", tues, 9.583, 10.83)
meets(math101_7, "Milikan 10", thurs, 9.583, 10.83)

class(math101_8, "Literally just Chess", "Gary Kasparov", math)
meets(math101_8, "Milikan 1", tues, 11.0, 12.25)
meets(math101_8, "Milikan 1", thurs, 11.0, 12.25)

class(math101_9, "Questioning Numbers", "Kim Ayers", math)
meets(math101_9, "Milikan 2", tues, 13.0, 14.5)
meets(math101_9, "Milikan 2", thurs, 13.0, 14.5)

class(math101_10, "Math for the Real World", "Ghassan Sarkis", math)
meets(math101_10, "Milikan 3", tues, 14.75, 16.0)
meets(math101_10, "Milikan 3", thurs, 14.75, 16.0)


%-----------------------------------------------
% GENERIC SCIENCE CLASSES
% MWF Classes
class(science101_1, "Debating Metric vs Imperial", "Bill Nye", science)
meets(science101_1, mon, 9.0, 9.83)
meets(science101_1, wed, 9.0, 9.83)
meets(science101_1, fri, 9.0, 9.83)

class(science101_2, "Rocks for Jocks", "Bill Nye", science)
meets(science101_2, mon, 10.0, 10.83)
meets(science101_2, wed, 10.0, 10.83)
meets(science101_2, fri, 10.0, 10.83)

class(science101_3, "Burning Stuff with Bunsen Burners", "Bill Nye", science)
meets(science101_3, mon, 11.0, 11.83)
meets(science101_3, wed, 11.0, 11.83)
meets(science101_3, fri, 11.0, 11.83)

% MW Classes
class(science101_4, "Fixing Climate Change", "Bill Nye", science)
meets(science101_4, mon, 13.0, 14.5)
meets(science101_4, wed, 13.0, 14.5)

class(science101_5, "Evolution vs. The Bible", "Charles Dawin", science)
meets(science101_5, mon, 14.75, 16.0)
meets(science101_5, wed, 14.75, 16.0)

% T,TH Classes
class(science101_6, "Debating Metric vs Imperial", "Bill Nye", science)
meets(science101_6, tues, 8.0, 9.25)
meets(science101_6, thurs, 8.0, 9.25)

class(science101_7, "Curing the Common Cold", "Bill Nye", science)
meets(science101_7, tues, 9.583, 10.83)
meets(science101_7, thurs, 9.583, 10.83)

class(science101_8, "Chemistry of Relationships", "Bill Nye", science)
meets(science101_8, tues, 11.0, 12.25)
meets(science101_8, thurs, 11.0, 12.25)

class(science101_9, "The Big Bang", "Neil deGrasse Tyson", science)
meets(science101_9, tues, 13.0, 14.5)
meets(science101_9, thurs, 13.0, 14.5)

class(science101_10, "Debating Metric vs Imperial", "Bill Nye", science)
meets(science101_10, tues, 14.75, 16.0)
meets(science101_10, thurs, 14.75, 16.0)


% --------------------------------------------------
% GENERIC SOCIAL SCIENCE CLASSES
% MWF Classes
class(generic_soc_science1, soc_science)
meets(generic_soc_science1, mon, 9.0, 9.83)
meets(generic_soc_science1, wed, 9.0, 9.83)
meets(generic_soc_science1, fri, 9.0, 9.83)

class(generic_soc_science2, soc_science)
meets(generic_soc_science2, mon, 10.0, 10.83)
meets(generic_soc_science2, wed, 10.0, 10.83)
meets(generic_soc_science2, fri, 10.0, 10.83)

class(generic_soc_science3, soc_science)
meets(generic_soc_science3, mon, 11.0, 11.83)
meets(generic_soc_science3, wed, 11.0, 11.83)
meets(generic_soc_science3, fri, 11.0, 11.83)

% MW Classes
class(generic_soc_science4, soc_science)
meets(generic_soc_science4, mon, 13.0, 14.5)
meets(generic_soc_science4, wed, 13.0, 14.5)

class(generic_soc_science5, soc_science)
meets(generic_soc_science5, mon, 14.75, 16.0)
meets(generic_soc_science5, wed, 14.75, 16.0)

% T,TH Classes
class(generic_soc_science6, soc_science)
meets(generic_soc_science6, tues, 8.0, 9.25)
meets(generic_soc_science6, thurs, 8.0, 9.25)

class(generic_soc_science7, soc_science)
meets(generic_soc_science7, tues, 9.583, 10.83)
meets(generic_soc_science7, thurs, 9.583, 10.83)

class(generic_soc_science8, soc_science)
meets(generic_soc_science8, tues, 11.0, 12.25)
meets(generic_soc_science8, thurs, 11.0, 12.25)

class(generic_soc_science9, soc_science)
meets(generic_soc_science9, tues, 13.0, 14.5)
meets(generic_soc_science9, thurs, 13.0, 14.5)

class(generic_soc_science10, soc_science)
meets(generic_soc_science10, tues, 14.75, 16.0)
meets(generic_soc_science10, thurs, 14.75, 16.0)


% --------------------------------------------------
% GENERIC HUMANITIES CLASSES
% MWF Classes
class(generic_humanities1, humanities)
meets(generic_humanities1, mon, 9.0, 9.83)
meets(generic_humanities1, wed, 9.0, 9.83)
meets(generic_humanities1, fri, 9.0, 9.83)

class(generic_humanities2, humanities)
meets(generic_humanities2, mon, 10.0, 10.83)
meets(generic_humanities2, wed, 10.0, 10.83)
meets(generic_humanities2, fri, 10.0, 10.83)

class(generic_humanities3, humanities)
meets(generic_humanities3, mon, 11.0, 11.83)
meets(generic_humanities3, wed, 11.0, 11.83)
meets(generic_humanities3, fri, 11.0, 11.83)

% MW Classes
class(generic_humanities4, humanities)
meets(generic_humanities4, mon, 13.0, 14.5)
meets(generic_humanities4, wed, 13.0, 14.5)

class(generic_humanities5, humanities)
meets(generic_humanities5, mon, 14.75, 16.0)
meets(generic_humanities5, wed, 14.75, 16.0)

% T,TH Classes
class(generic_humanities6, humanities)
meets(generic_humanities6, tues, 8.0, 9.25)
meets(generic_humanities6, thurs, 8.0, 9.25)

class(generic_humanities7, humanities)
meets(generic_humanities7, tues, 9.583, 10.83)
meets(generic_humanities7, thurs, 9.583, 10.83)

class(generic_humanities8, humanities)
meets(generic_humanities8, tues, 11.0, 12.25)
meets(generic_humanities8, thurs, 11.0, 12.25)

class(generic_humanities9, humanities)
meets(generic_humanities9, tues, 13.0, 14.5)
meets(generic_humanities9, thurs, 13.0, 14.5)

class(generic_humanities10, humanities)
meets(generic_humanities10, tues, 14.75, 16.0)
meets(generic_humanities10, thurs, 14.75, 16.0)


% --------------------------------------------------
% GENERIC ART CLASSES
% MWF Classes
class(generic_art1, art)
meets(generic_art1, mon, 9.0, 9.83)
meets(generic_art1, wed, 9.0, 9.83)
meets(generic_art1, fri, 9.0, 9.83)

class(generic_art2, art)
meets(generic_art2, mon, 10.0, 10.83)
meets(generic_art2, wed, 10.0, 10.83)
meets(generic_art2, fri, 10.0, 10.83)

class(generic_art3, art)
meets(generic_art3, mon, 11.0, 11.83)
meets(generic_art3, wed, 11.0, 11.83)
meets(generic_art3, fri, 11.0, 11.83)

% MW Classes
class(generic_art4, art)
meets(generic_art4, mon, 13.0, 14.5)
meets(generic_art4, wed, 13.0, 14.5)

class(generic_art5, art)
meets(generic_art5, mon, 14.75, 16.0)
meets(generic_art5, wed, 14.75, 16.0)

% T,TH Classes
class(generic_art6, art)
meets(generic_art6, tues, 8.0, 9.25)
meets(generic_art6, thurs, 8.0, 9.25)

class(generic_art7, art)
meets(generic_art7, tues, 9.583, 10.83)
meets(generic_art7, thurs, 9.583, 10.83)

class(generic_art8, art)
meets(generic_art8, tues, 11.0, 12.25)
meets(generic_art8, thurs, 11.0, 12.25)

class(generic_art9, art)
meets(generic_art9, tues, 13.0, 14.5)
meets(generic_art9, thurs, 13.0, 14.5)

class(generic_art10, art)
meets(generic_art10, tues, 14.75, 16.0)
meets(generic_art10, thurs, 14.75, 16.0)
