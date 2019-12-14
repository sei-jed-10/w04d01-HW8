# Homework: Ruby Array and Hash Homework

## Objectives:

- Apply your knowledge of ruby to solve a real world problem.
- Get really good at array manipulation.

## Activity

Create a program that models a subway system.
=
The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the journey and the total number of stops for the trip in the console:

There are 3 subway lines:

**Red line**
- South Station
- Kendall
- Central
- Harvard
- Park Street
- Porter
- Davis
- Alewife

**Green line** 
- Government Center
- Boylston
- Arlington
- Park Street
- Copley
- Hynes
- Kenmore

**Orange line**
- North Station
- Haymarket
- State
- Downtown Crossing
- Chinatown
- Park Street
- Back Bay
- Forest Hills

All 3 subway lines intersect at Park Street, but there are no other intersection points.

### Goal

Tell the user the number of stops between stations.

```rb
stops_between_stations('Red', 'Alewife', 'Red', 'Park Street')) # 3 stops
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') # 5 stops
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 7 stops
```

### Bonus

Tell the user the number of stops between stations AND the stops IN ORDER that they will pass through or change at.
```rb
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 
# "You must travel through the following stops on the Red line:"
# "South Station, Kendall, Central, Harvard and Park Street"
# "Change at Park Street."
# "Your trip continues through the following stops on Green Line:" 
# "Copley, Hines, and Kenmore."
# "7 stops in total."
```

### Double Bonus

Use `get` to allow the user to input their start line, start station, end line, and end station.
