class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.references :user, foreign_key: true
      t.references :opening, foreign_key: true
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
