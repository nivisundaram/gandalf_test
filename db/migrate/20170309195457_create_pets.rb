class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|

      t.timestamps
      t.string :name, null: false
      t.integer :person_id, null: false
    end
  end
end
