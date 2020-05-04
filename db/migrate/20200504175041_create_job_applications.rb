class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.integer :user_id
      t.integer :opening_id

      t.timestamps
    end
  end
end
