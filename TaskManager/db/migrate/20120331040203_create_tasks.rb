class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :login
      t.string :pwd
      t.string :name
      t.string :surname
      t.string :email
      t.timestamp :birthdate

      t.timestamps
    end
  end
end
