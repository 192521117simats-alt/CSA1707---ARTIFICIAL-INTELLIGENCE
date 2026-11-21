
% Monkey Banana Problem

% Initial state:
% state(MonkeyPosition, BoxPosition, MonkeyStatus, BananaStatus)

% Monkey can move from one position to another
move(
    state(P, B, on_floor, H),
    state(Q, B, on_floor, H)
) :-
    member(Q, [door, window, middle]),
    P \= Q.

% Monkey pushes the box
move(
    state(P, P, on_floor, H),
    state(Q, Q, on_floor, H)
) :-
    member(Q, [door, window, middle]),
    P \= Q.

% Monkey climbs onto the box
move(
    state(middle, middle, on_floor, H),
    state(middle, middle, on_box, H)
).

% Monkey grasps the bananas
move(
    state(middle, middle, on_box, no),
    state(middle, middle, on_box, yes)
).

% Goal state
goal(state(_, _, _, yes)).

% Recursive solution
solve(State, []) :-
    goal(State).

solve(State, [Action | Rest]) :-
    move(State, NextState),
    Action = move(State, NextState),
    solve(NextState, Rest).

% Start the problem
start :-
    InitialState = state(door, window, on_floor, no),
    solve(InitialState, Solution),
    write('Solution is:'),
    nl,
    print_solution(Solution).

% Display solution
print_solution([]).

print_solution([H | T]) :-
    write(H),
    nl,
    print_solution(T).
