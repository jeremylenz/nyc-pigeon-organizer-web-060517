def nyc_pigeon_organizer(data)
require 'pry'
pigeon_list = {}
pigeon_names = []

data.each do |attribute, value|  # Scrape up all the pigeon names
  value.each do |value, pigeons|
    pigeons.each do |name|
      pigeon_names << name
    end
  end
end

pigeon_names.uniq!  #Clean up the pigeon names

# binding.pry

pigeon_names.each do |pigeon_name|  #Add the pigeon names and blank values
  pigeon_list[pigeon_name]= {color: [], gender: [], lives: []}
end

# binding.pry


data.each do |attribute, value|
  value.each do |value_2, pigeons|
    pigeons.each do |pigeon_name|
      # binding.pry
      pigeon_list[pigeon_name][attribute] << value_2.to_s
    end
  end
end

# binding.pry

pigeon_list
end
