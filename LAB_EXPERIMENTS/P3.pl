
% Facts
student(101, rahul).
student(102, priya).
student(103, arun).

teacher(t1, mr_suresh).
teacher(t2, ms_anitha).

subject(cse101, artificial_intelligence).
subject(cse102, operating_systems).
subject(cse103, computer_networks).

% Relationships
teaches(t1, cse101).
teaches(t2, cse102).
teaches(t1, cse103).

studies(101, cse101).
studies(102, cse102).
studies(103, cse103).

% Rules
student_teacher(Student, Teacher) :-
    studies(Student, Subject),
    teaches(Teacher, Subject).

student_subject(Student, Subject) :-
    studies(Student, Subject).

teacher_subject(Teacher, Subject) :-
    teaches(Teacher, Subject).
