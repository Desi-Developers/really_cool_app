class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.datetime :date_of_birth
      t.string :bio

      t.timestamps
    end
  end
end
