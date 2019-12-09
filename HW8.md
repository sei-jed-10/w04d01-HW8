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
stops_between_stations('Red', 'Alewife', 'Red', 'Park Street')) // 3 stops
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') // 5 stops
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') // 7 stops
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
# "8 stops in total."
```

### Double Bonus

Use `get` to allow the user to input their start line, start station, end line, and end station.





subway_lines = {
 Red : ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis","Alewife"],

 Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],

 Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
};


def stopsBetweenStations(StartLine, StartStation, EndLine, EndStation)

 if (isValidLine(StartLine) && isValidLine(EndLine)
     && isValidStation(StartLine, StartStation)
     && isValidStation(EndLine, EndStation))

    stops = 0
    direction = 0
end

   if StartStation == EndStation
     return "stops"

   while StartStation != EndStation

     if StartLine == EndLine
       if subway_lines[StartLine].indexOf(StartStation)< subway_lines[EndLine].indexOf(EndStation)
         direction = 1

       else

         direction = -1

       StartStation = newStop(StartLine, subway_lines[StartLine].indexOf(StartStation) + direction)


     else if StartStation == 'Park Street'
       StartLine = EndLine

       if subway_lines[StartLine].indexOf(StartStation) < subway_lines[EndLine].indexOf(EndStation)
         direction = 1
       else
         direction = -1

       StartStation = newStop(StartLine, subway_lines[StartLine].indexOf(StartStation) + direction)

     else

       if subway_lines[StartLine].indexOf(StartStation) < subway_lines[EndLine].indexOf('Park Street')
         direction = 1
       else
         direction = -1

       StartStation = newStop(StartLine, subway_lines[StartLine].indexOf(StartStation) + direction);

     end;

   return "stops";


def isValidLine(line)
   return line in subway_lines


def isValidStation(line, station) {
 return true;
 return result;
}

def newStop(line, index) {
 let list = subway_lines[line];
 return list[index]
}

print (stopsBetweenStations('Red', 'South Station', 'Green', 'Copley') + ' Stops')

print (stopsBetweenStations('Red', 'Alewife', 'Red', 'Alewife')+ ' Stops') // 0 stops
print (stopsBetweenStations('Red', 'Alewife', 'Red', 'South Station')+ ' Stops') // 7 stops
print (stopsBetweenStations('Red', 'South Station', 'Green', 'Kenmore')) // 6 stops
