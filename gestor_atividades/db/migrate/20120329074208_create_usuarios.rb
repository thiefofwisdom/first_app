class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :name
      t.string :surname
      t.string :email
      t.datetime :birthdate

      t.timestamps
    end
  end
end
