require 'faker'
require_relative '../app/models/list.rb'
require_relative '../app/models/task.rb'

List.create(:name => "Todo")

10.times do 
  Task.create(:description => Faker::Lorem.words(5).join(' '),
              :completed => rand(2),
              :list_id => 1)
end
