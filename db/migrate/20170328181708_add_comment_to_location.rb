class AddCommentToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :assistances, :comment, :text
  end
end
