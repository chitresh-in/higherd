class CreateOpenings < ActiveRecord::Migration[5.2]
  def change
    create_table :openings do |t|
      t.string :profile
      t.string :ctc
      t.string :location
      t.date :deadline

      t.timestamps
    end
  end
end
