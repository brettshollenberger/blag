class AddPetType < ActiveRecord::Migration
  def up
    add_column :pets, :pet_type, :string
  end
end
