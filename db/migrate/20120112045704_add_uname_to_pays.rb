class AddUnameToPays < ActiveRecord::Migration
  def change
    add_column :pays, :uname, :string
  end
end
