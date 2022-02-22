class CreateProductCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :product_categories do |t|
      t.string :heading
      t.text :body
      t.boolean :display

      t.timestamps
    end
  end
end
