#Declaring and initializaing 3 arrays representing each subway line: Red, Green , and Orange.
$redSubwayLine = ["South Station", "Kendall","Central","Harvard","Park Street", "Porter", "Davis", "Alewife"];

$greenSubwayLine = ["Government Center", "Boylston", "Arlington", "Park Street","Copley", "Hynes", "Kenmore"];

$orangeSubwayLine = ["North Station", "Haymarket",  "State", "Downtown Crossing", "Chinatown", "Park Street", "Back Bay", "Forest Hills"];

#intersection variable holds the value of the station that intersects the three subway lines.
$intersection = "Park Street"

#getsubwayLineList function takes a string representing the subway line name and returns the array representing it.
def getSubwayLineList(inputLine)
    if (inputLine == "Red")
        subwayLineList= $redSubwayLine;
 
     elsif (inputLine == "Green")
        subwayLineList= $greenSubwayLine;
 
     elsif (inputLine == "Orange")
        subwayLineList= $orangeSubwayLine;
 
     else  #In case the input wasn't any of the three values above, return an error message.
        subwayLineList= "error";
 
     end
 end


 def stops_between_stations(startLine, startStation, endLine, endStation)
    numberOfStops = 0 #Will use it as a counter for each station the rider stops by.
    startSubwayLineList = getSubwayLineList(startLine) #stores the array representing the start line in another called startSubwayLineList
    endSubwayLineList = getSubwayLineList(endLine) #stores the array representing the end line in another called endSubwayLineList
 
    if (startSubwayLineList == "error" || endSubwayLineList == "error")  #//if either the start or end subway line name is wrong.
        puts("Sorry you entered an invalid subway line name!") #//Display a message informing the user about their wrong entry.
    return

    else
        if(startSubwayLineList==endSubwayLineList) #if start line is the same as end line:
            if(startStation==endStation) #check if the start and end stations on that line are the same.
                puts("Start and end stations are the same");
                puts(numberOfStops.to_s+" stops in total.""\n"); #Number of stops will be 0.        
                return

            else #start and end stations are different.
                puts "\nYou must travel through the following stops on the #{startLine} line:"
                for station in startSubwayLineList #loop through all stations on that line.
                    print station #print each station.
                    if (!(station==endStation)) #as long as the end station on that line hasn't been reached yet:
                        print ", " #add commas between station names.
                
                    else #if the station in the current itration is the end station.
                    print "."
                    numberOfStops=startSubwayLineList.index(startStation)-startSubwayLineList.index(endStation) #calculate the number of stops by getting the difference between the indices of the start and end stations on that line.
                    puts  "\n" +numberOfStops.to_s+" stops in total." #print the total number of stops.
                    return
                    end #of inner if .. else (for printing stations)
                end #of for loop.
            end #of if startstation==end station

        else #start subway line != end subway line.
        puts "\nYou must travel through the following stops on the #{startLine} line:"
            for station in startSubwayLineList
            #same as before, keep printing station names and seperate them by commas except when we reach "Park Street".
                if (!(station==$intersection))
                  print station+", "
        
                else
                  print "and "+$intersection+"."
                  break
                  end #of inner if (printing stations)
              end #of for loop.

        puts "\nChange at "+$intersection
        puts "Your trip continues through the following stops on #{endLine} Line:" 
    #loop through the stations of the end subway line list starting from the index of the intersection until the end station.
    endSubwayLineList[endSubwayLineList.index($intersection)+1..-1].each {|endLineStation|
        if(endLineStation==endStation)
          print "and "+endLineStation+"."
        else
        print endLineStation+", "
        end #of if statement.
      }
        #calculate and print the total number of stops.
        #First we need to calculate the difference between the index of the start station and the intersection on the start line.
        numberOfStops=(startSubwayLineList.index(startStation)-startSubwayLineList.index($intersection)).abs()
        #Then we need to calculate the difference between the index of the intersection and the end station on the end line.
        #And finally, sum the two values calculated earlier to get the total number of stops from the start station on the start line to the end station on the en line.
        numberOfStops+=(endSubwayLineList.index(endStation)-endSubwayLineList.index($intersection)).abs
        puts  "\n" +numberOfStops.to_s+" stops in total."
         
      end 
    end #of outer else
end

stops_between_stations('Red', 'Alewife', 'Red', 'Park Street') # 3 stops
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') # 5 stops
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 7 stops
        
