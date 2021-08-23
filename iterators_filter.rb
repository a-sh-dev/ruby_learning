people = ["alex", "alice","bob", "charlie", "steve", "Andy"]
people_starting_with_a = people.filter do |name| 
    name[0].downcase == "a" 
    #* name[0] is basically telling Ruby to search for the first letter --> index position 0 from name
end

pp people_starting_with_a