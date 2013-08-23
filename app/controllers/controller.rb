require_relative '../models/task.rb'
require_relative '../models/list.rb'

# add
def add(string_array)
  Task.create!(description: string_array.join(" "))
end





# delete
# complete
# list

if ARGV.any?
  if ARGV[0] == 'add'
    p add(ARGV[1..-1])
  end

end



if __FILE__ == $0
add(['Bake', 'a', 'delicious', 'blueberry-glazed', 'cheesecake'])
p add(['Bake', 'a', 'delicious', 'blueberry-glazed', 'cheesecake']) == "Bake a delicious blueberry-glazed cheesecake"

end



