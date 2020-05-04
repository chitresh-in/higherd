class AddNameToOpening < ActiveRecord::Migration[5.2]
  def change
    add_column :openings, :name, :string
  end
end
