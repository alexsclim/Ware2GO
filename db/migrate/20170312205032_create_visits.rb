class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.belongs_to :user, index: true
      t.belongs_to :location, index: true
      t.timestamps
    end
  end
end
