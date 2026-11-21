
% Facts
bird(sparrow).
bird(parrot).
bird(eagle).
bird(pigeon).
bird(ostrich).
bird(penguin).

% Birds that can fly
can_fly(sparrow).
can_fly(parrot).
can_fly(eagle).
can_fly(pigeon).

% Rule to check whether a bird can fly or not
check_flying(Bird) :-
    bird(Bird),
    can_fly(Bird),
    write(Bird),
    write(' can fly.').

check_flying(Bird) :-
    bird(Bird),
    \+ can_fly(Bird),
    write(Bird),
    write(' cannot fly.').

% Invalid bird
check_flying(Bird) :-
    \+ bird(Bird),
    write('Bird not found in database.').
