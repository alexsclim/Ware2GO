class AddNumPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :visited_num, :integer
  end
end
