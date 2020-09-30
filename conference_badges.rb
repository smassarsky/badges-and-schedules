def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.collect{|name| badge_maker(name)}
end

def assign_rooms(names)
  new_array = []
  names.each_with_index{|name, index| new_array.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")}
  new_array
end

def printer(attendees)
  batch_badge_creator(attendees).each{|str| puts str}
  assign_rooms(attendees).each{|str| puts str}
end
