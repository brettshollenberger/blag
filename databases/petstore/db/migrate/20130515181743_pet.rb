class Pet < ActiveRecord::Migration
  def change
    add_column :pets, :name, :string
  end
end
