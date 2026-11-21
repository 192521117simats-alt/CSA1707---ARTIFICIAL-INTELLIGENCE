
% Facts: Fruit and their Colors

fruit(apple, red).
fruit(banana, yellow).
fruit(orange, orange).
fruit(grapes, green).
fruit(mango, yellow).
fruit(strawberry, red).
fruit(guava, green).
fruit(cherry, red).

% Rule to find the color of a fruit
fruit_color(Fruit, Color) :-
    fruit(Fruit, Color).

% Rule to find fruits of a particular color
color_fruit(Color, Fruit) :-
    fruit(Fruit, Color).
