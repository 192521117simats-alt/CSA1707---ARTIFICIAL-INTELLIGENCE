
% Facts: Planet Database

planet(mercury, terrestrial, 0.39, 88).
planet(venus, terrestrial, 0.72, 225).
planet(earth, terrestrial, 1.00, 365).
planet(mars, terrestrial, 1.52, 687).
planet(jupiter, gas_giant, 5.20, 4333).
planet(saturn, gas_giant, 9.58, 10759).
planet(uranus, ice_giant, 19.20, 30687).
planet(neptune, ice_giant, 30.05, 60190).

% Rules

inner_planet(X) :-
    planet(X, _, Distance, _),
    Distance < 2.

outer_planet(X) :-
    planet(X, _, Distance, _),
    Distance >= 2.

terrestrial_planet(X) :-
    planet(X, terrestrial, _, _).

gas_planet(X) :-
    planet(X, gas_giant, _, _).

planet_type(X, Type) :-
    planet(X, Type, _, _).
