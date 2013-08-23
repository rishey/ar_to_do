class CreateLists < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :lists do |t|
      t.string :name
      t.timestamps
    end
    add_index :lists, :name
 
    create_table :tasks do |t|
      t.belongs_to :list
      t.string :description
      t.integer :completed
      t.timestamps
    end
    add_index :tasks, :list_id
    add_index :tasks, :completed
  end
end

