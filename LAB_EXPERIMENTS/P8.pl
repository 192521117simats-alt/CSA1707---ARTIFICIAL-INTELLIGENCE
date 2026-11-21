
% Facts: Disease and Diet Suggestions

diet(diabetes, 'Low sugar food, green vegetables, whole grains').
diet(blood_pressure, 'Low salt food, fruits, vegetables').
diet(obesity, 'Low fat food, salads, fruits and vegetables').
diet(anemia, 'Iron rich food, spinach, dates and beans').
diet(heart_disease, 'Low fat food, oats, fruits and vegetables').
diet(ulcer, 'Soft food, banana, rice and boiled vegetables').

% Rules

suggest_diet(Disease) :-
    diet(Disease, Food),
    write('Recommended diet: '),
    write(Food).

suggest_diet(Disease) :-
    \+ diet(Disease, _),
    write('Disease not found in the database.').

% Display available diseases
available_diseases :-
    diet(Disease, _),
    write(Disease),
    nl,
    fail.

available_diseases.
