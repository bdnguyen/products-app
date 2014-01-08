class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :option
      t.boolean :category1
      t.boolean :category2

      t.timestamps
    end
  end
end
