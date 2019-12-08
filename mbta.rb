Subway_Lines =
{
  Red: [ 'South Station' , 'Park Street' , 'Kendall' , 'Central' , 'Harvard' , 'Porter' , 'Davis' , 'Alewife'] ,
  Green: [ 'Government Center' , 'Park Street' , 'Boylston' , 'Arlington' , 'Copley' , 'Hynes' , 'Kenmore'] ,
  Orange: [ 'North Station' , 'Haymarket' , 'Park Street' , 'State' , 'Downtown Crossing' , 'Chinatown' , 'Back Bay' , 'Forest Hills'] ,

 Stops_loop: def arr
 stops = -1
    for lines in arr 
      stops ++
    
   return stops
  end
 ,

 stopsBetweenStations: def (Start_Line,Start_Station, End_Line, End_Station)
  
    if ((Start_Line||End_Line)!==('Red'||'Green'||'Orange')) #Bonus
    {
    puts ('You must choose an exist line')
    }
    else
    {
     Stops =0
     Intersection_Index_1=self[Start_Line].index('Park Street')
     Intersection_Index_2=self[End_Line].index('Park Street')
     Start_Station_Index=self[Start_Line].index(Start_Station)
     End_Station_Index=self[End_Line].index(End_Station)

    if (Start_Line == End_Line)
    {
      if(Start_Station==End_Station)
      {
        puts ('Rider boards the train a '+Start_Station+' Station and end up in the same station .')
        return 'Number of stops = '+ Stops
      }
      elsif (Start_Station_Index<End_Station_Index)
     {
       puts ('Rider boards the train a '+ Start_Line +' Line and '+Start_Station+'.')
        arr = self[Start_Line].slice(Start_Station_Index , End_Station_Index + 1)
        puts (arr)
        num =self.Stops_loop(arr)
        puts ('Rider exits the train at '+End_Line +' Line and '+End_Station+' .')
        return 'Number of stops = '+num
      }
      elsif (Start_Station_Index>End_Station_Index)
     {
       puts ('Rider boards the train a '+Start_Line+' Line and '+Start_Station+'.')
       arr = self[Start_Line].slice( End_Station_Index ,  Start_Station_Index + 1)
       puts (arr)
         num =self.Stops_loop(arr)
        puts ('Rider exits the train at '+End_Line +' Line and '+End_Station+' .')
        return 'Number of stops = '+ num 
      }
    }
   else
    {
     puts ('Rider boards the train a '+Start_Line+' Line and '+Start_Station+'.')
     arr1 = self[Start_Line].slice(Start_Station_Index , Intersection_Index_1 + 1)
     arr2 = self[End_Line].slice(Intersection_Index_2 , End_Station_Index + 1)
     num1 =self.Stops_loop(arr1)
     puts ('Rider transfers from '+Start_Line+' Line to '+End_Line+' Line at Park Street. ')
     num2=self.Stops_loop(arr2)
     num =num1+num2
     puts ('Rider exits the train at '+End_Line +' Line and '+End_Station+' .')
     return 'Number of stops = '+ num
    }
  }
end
}


Subway_Lines.stopsBetweenStations('Red','South Station', 'Red',  'Central')  # 3 stops
#Subway_Lines.stopsBetweenStations('Red', 'Alewife', 'Red', 'Alewife') # 0 stops
#Subway_Lines.stopsBetweenStations('Red', 'Alewife', 'Red', 'South Station') # 7 stops
#Subway_Lines.stopsBetweenStations('Red', 'South Station', 'Green', 'Kenmore') # 6 stops
#Subway_Lines.stopsBetweenStations('Red', 'South Station', 'Green', 'Copley') # 4 stops
#Subway_Lines.stopsBetweenStations('Blue', 'South Station', 'Green', 'Copley') # You must choose an exist line
