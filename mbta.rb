
# your solution here
def stops_between_stations(line1,station1,line2,station2)

 
    
   subway={  
 "Red"=>["South Station",
        "Kendall",
        "Central",
        "Harvard",
       "Park Street",
        "Porter",
      "Davis",
        "Alewife"], 
        "Green"=>['Government Center',
        'Boylston', 
        'Arlington',
        'Park Street', 
        'Copley', 
        'Hynes', 'Kenmore'],  
        "Orange"=>[
        'North Station',
        'Haymarket',
        'State',
        'Downtown Crossing', 
        'Chinatown',
        'Park Street',  
        'Back Bay', 
        'Forest Hills']  
       }
     
     totall=0
     if line1==line2 && station1==station2
     return 0
     end
   tot_1= subway[line1].index(station1)-subway[line1].index("Park Street")         
  
   totl_2= subway[line2].index(station2)- subway[ line2].index("Park Street") 
  totall= tot_1+(-totl_2)
  if totall<0 
return -(totall)

end
return totall
     
 







end

 p stops_between_stations("Red","Alewife","Red","Park Street") 
 p stops_between_stations('Red','Alewife','Orange',    'Downtown Crossing')  
  p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 
