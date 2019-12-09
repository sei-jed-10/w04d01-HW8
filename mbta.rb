#Declaring and initializaing 3 arrays representing each subway line: Red, Green , and Orange.
$redSubwayLine = ["South Station", "Park Street", "Kendall,Central", "Harvard", "Porter", "Davis", "Alewife"];

$greenSubwayLine = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"];

$orangeSubwayLine = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"];

#intersection variable holds the value of the station that intersects the three subway lines.
$intersection = "Park Street";

$validStartStation=false
$validEndStation=false
$subwayLineList


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


# def validateSInputStations(inputLine, inputStation)
 #   validStartStation=inputLine.include? inputStation

 #end
 
 def stops_between_stations(startLine, startStation, endLine, endStation)
    numberOfStops = 0 #Will use it as a counter for each station the rider stops by.
    startSubwayLineList = getSubwayLineList(startLine) #stores the array representing the start line in another called startSubwayLineList
    endSubwayLineList = getSubwayLineList(endLine) #stores the array representing the end line in another called endSubwayLineList
 
    if (startSubwayLineList == "error" || endSubwayLineList == "error")  #//if either the start or end subway line name is wrong.
        puts("Sorry you entered an invalid subway line name!") #//Display a message informing the user about their wrong entry.
    #end

    else
        if(startSubwayLineList==endSubwayLineList)
            if(startStation==endStation)
                puts("Start and end stations are the same");
                puts("Total number of stops= " + numberOfStops.to_s+"\n"); #Number of stops will be 0.        
                return

            else
                numberOfStops=startSubwayLineList.index(startStation)-startSubwayLineList.index(endStation)
                numberOfStops=(startSubwayLineList.length-numberOfStops).abs+1
                p "Total number of stops= " + numberOfStops.to_s
            end #of if startstation==end station

        #end #if start line== end line
        else
        numberOfStops=(startSubwayLineList.index(startStation)-startSubwayLineList.index($intersection)).abs()
        numberOfStops+=(endSubwayLineList.index(endStation)-endSubwayLineList.index($intersection)).abs+1
        p "Total number of stops= " + numberOfStops.to_s
        end 

    end
end

stops_between_stations('Red', 'Alewife', 'Red', 'Park Street') #// 3 stops
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') #// 5 stops
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') #// 7 stops
        

