require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pidgeon_list = {}
  data.each do |attribute, attribute_data|
    attribute_data.each do |type, names_array|
      names_array.each do |name|
        pidgeon_list[name] = {} if pidgeon_list[name] == nil
        pidgeon_list[name][attribute] = [] if pidgeon_list[name][attribute] == nil
        pidgeon_list[name][attribute] << type.to_s
      end
    end
  end
  pidgeon_list
end