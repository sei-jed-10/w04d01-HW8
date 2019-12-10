def stops_between_stations (startLine,station1,endLine,station2)

  subwayLines = {
                   red: [ "South Station" , "Kendall" , "Central" , "Harvard" , "Park Street" , "Porter" , "Davis" , "Alewife"] ,
                   green: [ "Government Center" , "Boylston" , "Arlington" , "Park Street" ,"Copley" , "Hynes" , "Kenmore"] ,
                   orange: [ "North Station" , "Haymarket" , "State" , "Downtown Crossing" , "Chinatown" , "Park Street" , "Back Bay" , "Forest Hills" ] 
                }
 
 
                 dist = 0

     
     ## this statement will do only if both lines are the same
     if startLine == endLine
 
         if((startLine == "red" || endLine == "red") || (startLine == "green" || endLine == "green") || (startLine == "orange" || endLine == "orange"))

             dist = (subwayLines[startLine.to_sym].index(station1) - subwayLines[endLine.to_sym].index(station2)).abs
             
         end
        
     end
     
 
     if(station1 == "Park Street")
         
           if(startLine == "red" && endLine == "green" || startLine == "green" && endLine == "red")
                       
                           
             dist = (subwayLines[startLine.to_sym].index("Park Street") - subwayLines[endLine.to_sym].index(station2) ).abs
            
 
           elsif(startLine == "red" && endLine == "orange" || startLine == "orange" && endLine == "red")
 
               
             dist = ( subwayLines[startLine.to_sym].index("Park Street") - subwayLines[endLine.to_sym].index(station2)).abs
      
      
           elsif (startLine == "orange" && endLine == "green" || startLine == "green" && endLine == "orange")
 
               
             dist = (subwayLines[startLine.to_sym].index("Park Street") - subwayLines[endLine.to_sym].index(station2)).abs

           end
             
           
      elsif(station1 != "Park Street")
           
             dist = (subwayLines[startLine.to_sym].index(station1) - subwayLines[endLine.to_sym].index(station2)).abs
             
        end
     
 
 
         puts "Number of stops is #{dist}."
 
 end

 ### Make sure the startLine and endLine are lowerCased !!!!!
stops_between_stations('red', 'Alewife', 'red', 'Park Street')  #3 stops
stops_between_stations('red', 'Alewife', 'orange', 'Downtown Crossing') #4 stops
stops_between_stations('red', 'South Station', 'green', 'Kenmore') #6 stops

###
# 1) initialize arrays with red,green,orange
# 2) then i wanted to create a variable where i calculate the index of the element in the array
# 3) I was not sure how to call from inside the class in ruby.. but I wanted to get the index of this array inside of the class and then subtract it from the given name.
# 4) create if else statement to compare between index of stations inside an array
# 5) I did not try the code, but i wanted to makea  display function afterwards