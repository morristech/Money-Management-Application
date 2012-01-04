class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|
      t.string :date
      t.string :goods_type
      t.string :name
      t.decimal :price
      t.string :image_url
      t.string :receipt_url
      t.text :memo

      t.timestamps
    end
  end
end
