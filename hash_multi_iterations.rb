# ! From Ed Rails View - Challenge
# ! Display hashes pairs through iterations

@characters = [
  {
  "id": 1,
  "name": 'Luke Skywalker',
  "height": '172',
  "mass": '77',
  "hair_color": 'blond',
  "skin_color": 'fair',
  "eye_color": 'blue',
  "birth_year": '19BBY',
  "gender": 'male',
  "pic": 'https://upload.wikimedia.org/wikipedia/en/9/9b/Luke_Skywalker.png'
  },
  {
  "id": 2,
  "name": 'C-3PO',
  "height": '167',
  "mass": '75',
  "hair_color": 'n/a',
  "skin_color": 'gold',
  "eye_color": 'yellow',
  "birth_year": '112BBY',
  "gender": 'n/a',
  "pic": "https://upload.wikimedia.org/wikipedia/en/5/5c/C-3PO_droid.png"
  },
  {
  "id": 3,
  "name": 'R2-D2',
  "height": '96',
  "mass": '32',
  "hair_color": 'n/a',
  "skin_color": 'white, blue',
  "eye_color": 'red',
  "birth_year": '33BBY',
  "gender": 'n/a',
  "pic": "https://vignette.wikia.nocookie.net/starwars/images/e/eb/ArtooTFA2-Fathead.png"
  },
  {
  "id": 4,
  "name": 'Darth Vader',
  "height": '202',
  "mass": '136',
  "hair_color": 'none',
  "skin_color": 'white',
  "eye_color": 'yellow',
  "birth_year": '41.9BBY',
  "gender": 'male',
  "pic": "https://lumiere-a.akamaihd.net/v1/images/Darth-Vader_6bda9114.jpeg"
  },
  {
  "id": 5,
  "name": 'Leia Organa',
  "height": '150',
  "mass": '49',
  "hair_color": 'brown',
  "skin_color": 'light',
  "eye_color": 'brown',
  "birth_year": '19BBY',
  "gender": 'female',
  "pic": "https://diagnosislife.com/wp-content/uploads/2018/10/Princess-Leia-Carrie-Fisher-Star-Wars.jpg"
  }
]

# iterate output based on data above
@characters.each do |chara|
  puts chara[:name]
  puts "-" * chara[:name].length
  
  # select only these keys to display
  selected = [:height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender]
  selected_keys = chara.select { |k,v| selected.include?(k) }
  
  # select only the keys other than the ones to be excluded
  excluded = [:id, :name, :pic]
  excluded_keys = chara.select { |k,v| !(excluded.include?(k)) }
  
  # debugging test:
  # puts "=" * chara[:name].length
  # puts "Selected_keys: #{selected_keys}"
  # puts "Excluded_keys: #{excluded_keys}"
  # puts "=" * chara[:name].length

  # Within the filtered keys, if the value = 'n/a', reject/do not include
  stats = excluded_keys.reject { |k,v| v == "n/a" }

  # Then, substitute any "_" to " " & capitalize each word in keys!
  # Finally display output
  stats.map do |key, value|
    puts "#{key.to_s.sub("_", " ").split.map(&:capitalize).join(" ")}: #{value}" 
  end
  puts
end