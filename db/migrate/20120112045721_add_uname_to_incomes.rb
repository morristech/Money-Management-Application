class AddUnameToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :uname, :string
  end
end
