def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = []
  data[:gender].keys.each do |key, pigeon|
    pigeon.each do |name|
    pigeon_names << name
   end
  end
  
  pigeon_names.each do |bird|
    pigeon_list[bird] = {
      color: [],
      gender: [],
      lives: []
    }
  end
  
  data[:color].each do |color, name_array|
    name_array.each do |name|
      if data[:color][color].include?(name)
        pigeon_list[name][:color] << color.to_s
      end
    end
  end
  
  data[:gender].each do |gender, name_array|
    name_array.each do |name|
      if data[:gender][gender].include?(name)
        pigeon_list[name][:gender] << gender.to_s
      end
    end
  end
  
  data[:lives].each do |place, name_array|
    name_array.each do |name|
      if data[:lives][place].include?(name)
        pigeon_list[name][:lives] << place.to_s
      end
    end
  end
  
  pigeon_list
end
