class CreateNeedyPeople < ActiveRecord::Migration
  def change
    create_table :needy_people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :address
      t.text :comments
      t.string :organization

      t.timestamps
    end
  end
end
