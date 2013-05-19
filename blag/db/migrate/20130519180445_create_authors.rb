class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, :null => false, :unique => true
      t.string :email, :null => false
      t.string :bio
      t.string :password, :null => false

      t.timestamps
    end
  end
end
