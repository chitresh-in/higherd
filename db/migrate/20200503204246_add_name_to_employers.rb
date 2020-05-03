class AddNameToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :name, :string
  end
end
