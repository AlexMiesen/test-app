class PeopleAffiliations < ActiveRecord::Migration[6.0]
  def change
    create_join_table :people, :affiliations do |t|
      t.index :person_id
      t.index :affiliation_id
    end
  end
end
