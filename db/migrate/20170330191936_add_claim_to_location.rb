class AddClaimToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :claimed, :boolean, default: false
  end
end
