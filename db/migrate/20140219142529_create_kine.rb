class CreateKine < ActiveRecord::Migration
  def change
    create_table :kine do |t|
      t.integer :number
      t.string :name
      t.integer :age
      t.string :description
      t.date :birthday
      t.date :delivery

      t.timestamps
    end
  end
end
