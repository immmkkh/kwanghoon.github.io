class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :title
      t.string :content
      t.integer :age
      t.integer :gender #guy 1, girl 2 

      t.timestamps null: false
    end
  end
end
