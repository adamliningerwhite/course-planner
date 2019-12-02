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

% GENERIC CS CLASSES
% MWF Classes
class(generic_cs1, csci)
meets(generic_cs1, mon, 9.0, 9.83)
meets(generic_cs1, wed, 9.0, 9.83)
meets(generic_cs1, fri, 9.0, 9.83)

class(generic_cs2, csci)
meets(generic_cs2, mon, 10.0, 10.83)
meets(generic_cs2, wed, 10.0, 10.83)
meets(generic_cs3, fri, 10.0, 10.83)

class(generic_cs3, csci)
meets(generic_cs3, mon, 11.0, 11.83)
meets(generic_cs3, wed, 11.0, 11.83)
meets(generic_cs3, fri, 11.0, 11.83)

% MW Classes
class(generic_cs4, csci)
meets(generic_cs4, mon, 13.0, 14.5)
meets(generic_cs4, wed, 13.0, 14.5)

class(generic_cs5, csci)
meets(generic_cs5, mon, 14.75, 16.0)
meets(generic_cs5, wed, 14.75, 16.0)

% T,TH Classes
class(generic_cs6, csci)
meets(generic_cs6, tues, 8.0, 9.25)
meets(generic_cs6, thurs, 8.0, 9.25)

class(generic_cs7, csci)
meets(generic_cs7, tues, 9.583, 10.83)
meets(generic_cs7, thurs, 9.583, 10.83)

class(generic_cs8, csci)
meets(generic_cs8, tues, 11.0, 12.25)
meets(generic_cs8, thurs, 11.0, 12.25)

class(generic_cs9, csci)
meets(generic_cs9, tues, 13.0, 14.5)
meets(generic_cs9, thurs, 13.0, 14.5)

class(generic_cs10, csci)
meets(generic_cs10, tues, 14.75, 16.0)
meets(generic_cs10, thurs, 14.75, 16.0)


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
