person('Arun', '2004-05-12').
person('Ravi', '2003-08-20').
person('Priya', '2004-11-15').

main :-
    write('Enter name: '),
    read(Name),
    person(Name, DOB),
    write('DOB: '),
    write(DOB).
