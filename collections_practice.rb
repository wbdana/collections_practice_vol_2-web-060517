def begins_with_r(collection)
  collection.all? {|i| i.start_with?("r")}
end

def contain_a(collection)
  collection.select {|i| i.include?("a")}
end

def first_wa(collection)
  collection.find {|i| i.to_s.start_with?("wa")}
end

def remove_non_strings(collection)
  collection.delete_if {|i| i.class != String}
end

def count_elements(collection)
  collection.group_by(&:itself).map{|key, i| key.merge(count: i.length)}
end

def merge_data(keys, data)
  data[0].values.map.with_index{|values_from_data, index| keys[index].merge(values_from_data)}
end

def find_cool(collection)
  cool.select{|hash| hash[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, loc_hash|
    loc = loc_hash[:location]
    if organized_schools[loc]
      organized_schools[loc] << school
    else
      organized_schools[loc] = []
      organized_schools[loc] << school
    end
  end
  organized_schools
end
