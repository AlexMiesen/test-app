class AddLocationIdToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :location_id, :integer
  end
end
