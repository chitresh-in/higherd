class AddAboutToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :about, :text
  end
end
