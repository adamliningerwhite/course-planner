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

class(csci051A_01, "Intro to CS with Topics in AI", csci)
meets(csci051A_01, mon, 11.00, 12.15)
meets(csci051A_01, wed, 11.00, 12.15)
meets(csci051A_01, wed, 7.00, 9.50)

class(csci051P_01, "Intro to CS in Python with Lab", csci)
meets(csci051P_01, mon, 10.00, 10.50)
meets(csci051P_01, wed, 10.00, 10.50)
meets(csci051P_01, fri, 10.00, 10.50)
meets(csci051P_01, thurs, 1.15, 4.00)

class(csci054_01, "Discrete Math and Functional Programming", csci)
meets(csci054_01, tues, 1.15, 2.30)
meets(csci054_01, thurs, 1.15, 2.30)

class(csci054_02, "Discrete Math and Functional Programming", csci)
meets(csci054_02, tues, 2.45, 3.00)
meets(csci054_02, thurs, 2.45, 3.00)

class(csci062_01, "Data Structures and Advanced Programming", csci)
meets(csci062_01, tues, 1.15, 2.30)
meets(csci062_01, thurs, 1.15, 2.30)
meets(csci062_01, wed, 1.15, 4.00)

class(csci101_01, "Intro to Languages and Theory", csci)
meets(csci101_01, tues, 1.15, 2.30)
meets(csci101_01, thurs, 1.15, 2.30)

class(csci101_02, "Intro to Languages and Theory", csci)
meets(csci101_02, tues, 2.45, 4.00)
meets(csci101_02, thurs, 2.45, 4.00)

class(csci105_01, "Computer Systems", csci)
meets(csci105_01, mon, 1.15, 2.30)
meets(csci105_01, wed, 1.15, 2.30)
meets(csci105_01, mon, 7.00, 8.15)

class(csci105_02, "Computer Systems", csci)
meets(csci105_02, mon, 2.45, 4.00)
meets(csci105_02, wed, 2.45, 4.00)
meets(csci105_02, mon, 7.00, 8.15)

class(csci133_01, "Database Systems", csci)
meets(csci133_01, mon, 11.00, 12.15)
meets(csci133_01, wed, 11.00, 12.15)

class(csci140_01, "Algorithms", csci)
meets(csci140_01, tues, 9.35, 10.50)
meets(csci140_01, thurs, 9.35, 10.50)

class(csci140_02, "Algorithms", csci)
meets(csci140_02, tues, 11.00, 12.15)
meets(csci140_02, thurs, 11.00, 12.15)

class(csci181N_01, "Advanced Functional Programming", csci)
meets(csci181N_01, tues, 9.35, 10.50)
meets(csci181N_01, thurs, 9.35, 10.50)

class(csci181U_01, "Building an Internet of Things", csci)
meets(csci181U_01, tues, 9.35, 10.50)
meets(csci181U_01, thurs, 9.35, 10.50)
meets(csci181U_01, tues, 1.15, 4.00)



% --------------------------------------------------
% GENERIC CLASSES
%

% GENERIC MATH CLASSES
% MWF Classes
class(generic_math1, math)
meets(generic_math1, mon, 9.0, 9.83)
meets(generic_math1, wed, 9.0, 9.83)
meets(generic_math1, fri, 9.0, 9.83)

class(generic_math2, math)
meets(generic_math2, mon, 10.0, 10.83)
meets(generic_math2, wed, 10.0, 10.83)
meets(generic_math2, fri, 10.0, 10.83)

class(generic_math3, math)
meets(generic_math3, mon, 11.0, 11.83)
meets(generic_math3, wed, 11.0, 11.83)
meets(generic_math3, fri, 11.0, 11.83)

% MW classes
class(generic_math4, math)
meets(generic_math4, mon, 13.0, 14.5)
meets(generic_math4, wed, 13.0, 14.5)

class(generic_math5, math)
meets(generic_math5, mon, 14.75, 16.0)
meets(generic_math5, wed, 14.75, 16.0)

% T,TH Classes
class(generic_math6, math)
meets(generic_math6, tues, 8.0, 9.25)
meets(generic_math6, thurs, 8.0, 9.25)

class(generic_math7, math)
meets(generic_math7, tues, 9.583, 10.83)
meets(generic_math7, thurs, 9.583, 10.83)

class(generic_math8, math)
meets(generic_math8, tues, 11.0, 12.25)
meets(generic_math8, thurs, 11.0, 12.25)

class(generic_math9, math)
meets(generic_math9, tues, 13.0, 14.5)
meets(generic_math9, thurs, 13.0, 14.5)

class(generic_math10, math)
meets(generic_math10, tues, 14.75, 16.0)
meets(generic_math10, thurs, 14.75, 16.0)


%-----------------------------------------------
% GENERIC SCIENCE CLASSES
% MWF Classes
class(generic_science1, science)
meets(generic_science1, mon, 9.0, 9.83)
meets(generic_science1, wed, 9.0, 9.83)
meets(generic_science1, fri, 9.0, 9.83)

class(generic_science2, science)
meets(generic_science2, mon, 10.0, 10.83)
meets(generic_science2, wed, 10.0, 10.83)
meets(generic_science2, fri, 10.0, 10.83)

class(generic_science3, science)
meets(generic_science3, mon, 11.0, 11.83)
meets(generic_science3, wed, 11.0, 11.83)
meets(generic_science3, fri, 11.0, 11.83)

% MW Classes
class(generic_science4, science)
meets(generic_science4, mon, 13.0, 14.5)
meets(generic_science4, wed, 13.0, 14.5)

class(generic_science5, science)
meets(generic_science5, mon, 14.75, 16.0)
meets(generic_science5, wed, 14.75, 16.0)

% T,TH Classes
class(generic_science6, science)
meets(generic_science6, tues, 8.0, 9.25)
meets(generic_science6, thurs, 8.0, 9.25)

class(generic_science7, science)
meets(generic_science7, tues, 9.583, 10.83)
meets(generic_science7, thurs, 9.583, 10.83)

class(generic_science8, science)
meets(generic_science8, tues, 11.0, 12.25)
meets(generic_science8, thurs, 11.0, 12.25)

class(generic_science9, science)
meets(generic_science9, tues, 13.0, 14.5)
meets(generic_science9, thurs, 13.0, 14.5)

class(generic_science10, science)
meets(generic_science10, tues, 14.75, 16.0)
meets(generic_science10, thurs, 14.75, 16.0)


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
