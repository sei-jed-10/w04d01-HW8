class Stations
    


    def initialize(start_line, strStation, end_line, enStation)
        @start_line = start_line
        @start_station = strStation
        @end_line = end_line
        @end_station = enStation
     end

def stops_between_stations()


    red = Stations.new["South Station","Kendall","Central","Harvard","Park Street","Porter","Davis","Alewife"]
    green = Stations.new["Government Center","Boylston","Arlington","Park Street","Copley","Hynes","Kenmore"]  
    orange = Stations.new["North Station","Haymarket","State","Downtown Crossing","Chinatown","Park Street","Back Bay","Forest Hills"]


 strStation = @start_line.downcase.find_index(@start_station);
 enStation = @end_line.downcase.find_index(@end_station);
 br1 = start_line.downcase.find_index("Park Street")
 br2 = end_line.downcase.find_index("Park Street")
 firstStop = 0
 result = 0

if start_line.downcase == end_line.downcase
  result = (strStation - enStation).abs
 elsif start_line != end_line 
    firstStop = (strStation - br1).abs
    firstStop = ((enStation - br2) + firstStop).abs

  return result

  puts result



 end
 
end
stops_between_stations('Red', 'Alewife', 'Red', 'Park Street') 
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') 
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 
class1obj = Stations.new
class1obj.stops_between_stations
end