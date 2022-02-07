class CreateCertJoinCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :cert_join_categories do |t|
      t.belongs_to :certificates, null: false, foreign_key: true
      t.belongs_to :cert_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
