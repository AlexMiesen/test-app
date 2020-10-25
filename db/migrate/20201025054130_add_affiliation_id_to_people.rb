class AddAffiliationIdToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :affiliation_id, :integer
  end
end
