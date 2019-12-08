
# your solution here
def stops_between_stations

    puts "Please Enter StartLine: "
    startline = gets
     
    puts "Please Enter StartStation : "
    startstation = gets
    
    puts "Please Enter EndLine : "
    endline = gets
   
    puts "Please Enter EndStation : "
    endstation = gets
    

    subways = [
        {
            line: "Red",
            stations: ["South Station","Kendall","Central","Harvard","Park Street","Porter","Davis","Alewife"]
        },
        {
            line: "Green",
            stations: ["Government Center","Boylston","Arlington","Park Street","Copley","Hynes","Kenmore"]
        },
        {
            line: "Orange",
            stations: ["North Station","Haymarket","State","Downtown Crossing","Chinatown","Park Street","Back Bay","Forest Hills"]
        }
                        ]

    # bounus
    # if startline != "Red" && startline != "Green" && startline != "Orange" || endline != "Red" && endline != "Green" && endline != "Orange" 
    #      puts "The line is wrong"
    # end
    # puts "The line is wrong" unless startline == "Red" && startline == "Green" && startline == "Orange" || endline == "Red" && endline == "Green" && endline == "Orange" 


     indexofstartstation = 0
     indexofendstation = 0
     sharedpoint = 0
     sharedpoint2 = 0
     totalsteps = 0


    i = 0
    j = 0
    while i < subways.length
        while j < subways[i][:stations].length
      
      if startline == subways[i][:line] 
        indexofstartstation = subways[i][:stations].index(startstation)
        sharedpoint =  subways[i][:stations].index("Park Street")
      end
      if endline == subways[i][:line]
        indexofendstation = subways[i][:stations].index(endstation)
        sharedpoint2 =  subways[i][:stations].index("Park Street")
      end
    
        j+=1
        end
      i+= 1
    end


    if startline == endline then totalsteps =  indexofstartstation-indexofendstation 
    else totalsteps = (indexofendstation - sharedpoint2) + (sharedpoint-indexofstartstation)
    end


        # bouns       
    puts "Rider Transfers from #{startline} line from #{startstation}"
    if startline != endline
      puts "Change at Park Street. "	
    end
    puts "Rider Arrives to #{endline} line At #{endstation} "	
                             
    puts totalsteps


end

stops_between_stations