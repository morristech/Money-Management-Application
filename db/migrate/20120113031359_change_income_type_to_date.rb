class ChangeIncomeTypeToDate < ActiveRecord::Migration
  def up
    change_column :incomes, :date, :date, null: false
  end

  def down
    change_column :incomes, :date, :string
  end
end
