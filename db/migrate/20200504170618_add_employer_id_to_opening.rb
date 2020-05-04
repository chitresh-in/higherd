class AddEmployerIdToOpening < ActiveRecord::Migration[5.2]
  def change
    add_column :openings, :employer_id, :integer
  end
end
