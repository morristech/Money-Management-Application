class ChangePayTypeToDate < ActiveRecord::Migration
  def up
    change_column :pays, :date, :date, null: false
  end

  def down
    change_column :pays, :date, :string
  end
end
