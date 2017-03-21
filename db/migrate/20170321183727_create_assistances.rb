class CreateAssistances < ActiveRecord::Migration[5.0]
  def change
    create_table :assistances do |t|
      t.integer :user_id
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
