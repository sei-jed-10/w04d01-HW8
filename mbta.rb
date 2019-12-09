

def stops_between_stations(start_line,start_station,end_line,end_station)

subway={
    red:["South Station","Kendall","Central","Harvard","Park Street","Porter","Davis","Alewife"],
    green:["Government Center","Boylston","Arlington","Park Street","Copley","Hynes","Kenmore"],  
    orange: ["North Station","Haymarket","State","Downtown Crossing","Chinatown","Park Street","Back Bay","Forest Hills"]
}

 str_station = subway[start_line.downcase.to_sym].index(start_station);
 en_station = subway[end_line.downcase.to_sym].index(end_station);
 break_line1 = subway[start_line.downcase.to_sym].index("Park Street")
 break_line2 = subway[end_line.downcase.to_sym].index("Park Street")
 first_stop = 0
 second_stop = 0

if start_line == end_line
  result = (str_station - en_station).abs
else
    first_stop = (str_station - break_line1).abs
    second_stop = (((en_station - break_line2).abs)+ first_stop)

 end
 
end
p stops_between_stations('Red', 'Alewife', 'Red', 'Park Street') 
p stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing') 
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 

