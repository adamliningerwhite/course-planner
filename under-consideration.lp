% C: Don't schedule classes that are not wanted
:- picked_class(C1),
    unwanted_class(C2),
    C1 = C2.

% C: Don't schedule classes from this department
:- picked_class(C),
    class_dept(C, D1),
    unwanted_dept(D2),
    D1 = D2.

% C: Don't schedule classes with unwanted professor
:- picked_class(C),
    class_prof(C, P1),
    unwanted_prof(P2),
    P1 = P2.
