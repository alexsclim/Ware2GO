class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :body
      t.string :user_name
      t.belongs_to :location, index: true
      t.timestamps
    end
  end
end
