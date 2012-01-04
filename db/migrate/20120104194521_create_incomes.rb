class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :date
      t.string :goods_type
      t.string :name
      t.decimal :price
      t.text :memo

      t.timestamps
    end
  end
end
