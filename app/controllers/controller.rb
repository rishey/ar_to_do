require_relative '../models/task.rb'
require_relative '../models/list.rb'

# add
def add(string_array)
  Task.create!(description: string_array.join(" "), 
               list_id: 1,
               completed: 0)
end

def list
  Task.all
end

def delete(task_id)
  task = Task.find_by_id(task_id)
  task.destroy
end

def complete(task_id)
  task = Task.find_by_id(task_id)
  task.update(completed: 1)
end


if ARGV.any?
  if ARGV[0] == 'add'
    add(ARGV[1..-1])
  elsif ARGV[0] == 'list'
    p list
  elsif ARGV[0] == 'delete'
    delete(ARGV[1])
  elsif ARGV[0] == 'complete'
    complete(ARGV[1])
  end

end



if __FILE__ == $0
add(['Bake', 'a', 'delicious', 'blueberry-glazed', 'cheesecake'])
p add(['Bake', 'a', 'delicious', 'blueberry-glazed', 'cheesecake']) == "Bake a delicious blueberry-glazed cheesecake"

end



