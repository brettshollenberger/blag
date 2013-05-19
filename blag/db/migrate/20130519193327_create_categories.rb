class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cat
      t.integer :post_id

      t.timestamps
    end
  end
end
