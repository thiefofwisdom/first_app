class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :\
      t.string :login
      t.string :name
      t.string :surname
      t.string :email

      t.timestamps
    end
  end
end
