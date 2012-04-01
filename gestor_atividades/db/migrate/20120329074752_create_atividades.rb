class CreateAtividades < ActiveRecord::Migration
  def change
    create_table :atividades do |t|
      t.datetime :begins
      t.datetime :ends
      t.string :title
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
