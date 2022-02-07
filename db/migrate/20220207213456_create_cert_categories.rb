class CreateCertCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :cert_categories do |t|
      t.string :title, null: false 

      t.timestamps
    end
  end
end
