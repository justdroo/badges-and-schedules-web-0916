def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  name_list = []
  name_array.each do |name|
    name_list << badge_maker(name)
  end
  name_list
end

def assign_rooms(name_array)
  room_assign = []
  name_array.each_with_index do |name, index|
    room_assign << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end

  room_assign
end

def printer(name_array)
  welcome_list = batch_badge_creator(name_array)
  room_nums = assign_rooms(name_array)

  i = 0
  while i < name_array.length do
    puts welcome_list[i]
    puts room_nums[i]
    i += 1
  end
end
