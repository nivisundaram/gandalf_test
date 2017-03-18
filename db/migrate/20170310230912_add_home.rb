class AddHome < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.timestamps
      t.string :name, null: false
      t.integer :person_id, null: false
    end
  end

end
