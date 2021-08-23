programming_languages = ["Ruby", "Python", "JavaScript"]
# clone and dup are the same 
languages_known = programming_languages.clone
# double shovel operation works the same as push 
languages_known << "C++"
pp languages_known
pp programming_languages
puts languages_known.object_id
puts programming_languages.object_id