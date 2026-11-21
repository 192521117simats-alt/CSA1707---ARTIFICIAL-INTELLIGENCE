
% Facts: Gender
male(john).
male(peter).
male(david).
male(robert).

female(mary).
female(susan).
female(lisa).
female(anna).

% Facts: Parent Relationships
parent(john, peter).
parent(mary, peter).

parent(john, susan).
parent(mary, susan).

parent(peter, david).
parent(lisa, david).

parent(peter, anna).
parent(lisa, anna).

% Rules

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    sibling(X, Y).

sister(X, Y) :-
    female(X),
    sibling(X, Y).

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
