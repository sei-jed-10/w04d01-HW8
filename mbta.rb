
# your solution here

# your solution here
$subway = {
   
    "Red" => [
        "South Station",
        "Kendall",
        "Central",
        "Harvard",
        "Park Street",
        "Porter",
        "Davis",
        "Alewife"],
    "Green" => [
        "Government Center",
        "Boylston",
        "Arlington",
        "Park Street",
        "Copley",
        "Hynes",
        "Kenmore"],

    "Orange" => [
        "North Station",
        "Haymarket",
        "State",
        "Downtown Crossing",
        "Chinatown",
        "Park Street",
        "Back Bay",
        "Forest Hills"]
}


def stops_between_stations (l1, s1, l2, s2)

@l1 = l1
@s1 =s1
@l2 = l2
@s2 = s2

if l1 == l2
puts "// #{($subway[l1].index(s1) - $subway[l2].index(s2)).abs}  Stops"
elsif l1 != l2
    puts " // #{(($subway[l1].index(s1) - $subway[l1].index("Park Street")).abs) + 
    (($subway[l2].index(s2) - $subway[l2].index("Park Street")).abs)}  Stops"
end

end
 
stops_between_stations('Red', 'Alewife', 'Red', 'Park Street')
stops_between_stations('Red', 'Alewife', 'Orange', 'Downtown Crossing')
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')

## Bonus --------------------------------------------------------------------------------------
def stops_between_stations (l1, s1, l2, s2)

    @l1 = l1
    @s1 = s1
    @l2 = l2
    @s2 = s2
    ## get object 
    
    ### other 
    dif_start=(($subway[l1].index(s1) - $subway[l1].index("Park Street")).abs
    dif_end= ($subway[l2].index(s2) - $subway[l2].index("Park Street")).abs)
   

    
    t1=$subway[l1].index(s1) +1
    t2= t1+1
    t3= t2 +1
    t4=t3+1

    #second trip
    trip2 = $subway[l1].index(s1) -2
    tr_x= trip2 -1
    
    
    
    if l1 == l2
    puts " #{($subway[l1].index(s1) - $subway[l2].index(s2)).abs} Stops"
    
elsif l1 != l2
        puts"You must travel through the following stops on the #{l1}:
        #{s1} , #{$subway[l1][t1]}, #{$subway[l1][t2]}, #{$subway[l1][t3]}, #{$subway[l1][t4]}
         change at Park Street.
         Your trip continues through the following stops on #{l2} Line:
         #{$subway[l2][trip2]}, #{$subway[l2][tr_x]} and  #{s2} 
        #{(($subway[l1].index(s1) - $subway[l1].index("Park Street")).abs) + 
        (($subway[l2].index(s2) - $subway[l2].index("Park Street")).abs)} stops in total"
    end
    
    end
     
    stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')



 



           #{x =1
        #    until x <= dif_start
        #     puts $subway[l1].index(s1) + 1
        #     x += 1
        #   end} 