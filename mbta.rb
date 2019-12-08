
# your solution here

## first initilize the arrays
class subway
def initialize
    
      red =['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife']
      green =  ['Haymarket', 'Government Center','Park Street', 'Boylston', 'Arlington','Copley', 'Hynes', 'Kenmore']
      orange = ['North Station', 'Haymarket','Park Street', 'State','Downtown Crossing', 'Chinatown','Back Bay', 'Forest Hills']
    
end

## create a function with arguments startLine,station1,endLine,station2
def stops_between_stations (startLine,station1,endLine,station2)

    ## find the index of station1 and station2
    index_station1 = startLine.index { |x| x == station1}
    index_station2 = endLine.index { |x| x == station2}
    
    ## this statement will do only if both lines are the same
    if startLine == endLine
        if((startLine == "red" || endLine == "red") || (startLine == "green" || endLine == "green") || (startLine == "orange" || endLine == "orange"))
            index_station2 - index_station1
        end

        if(station1 == "Park Street")
        {
          if(startLine == "red" && endLine == "green" || startLine == "green" && endLine == "red")
                      
              {
            
                index_station2 - index_station1

              }
          elsif(startLine == "red" && endLine == "orange" || startLine == "orange" && endLine == "red")

              {
                
                index_station2 - index_station1;

              }

          elsif (startLine == "orange" && endLine == "green" || startLine == "green" && endLine == "orange")

              {
                index_station2 - index_station1

              } 
              
          }
          else
          {
            index_station2 - index_station1

          }
        end

end

def display
    ## display the solution..

end


###
# 1) initialize arrays with red,green,orange
# 2) then i wanted to create a variable where i calculate the index of the element in the array
# 3) I was not sure how to call from inside the class in ruby.. but I wanted to get the index of this array inside of the class and then subtract it from the given name.
# 4) create if else statement to compare between index of stations inside an array
# 5) I did not try the code, but i wanted to makea  display function afterwards