class CreateJobResults < ActiveRecord::Migration
  def change
    create_table :job_results do |t|
      t.string :jobtitle
      t.string :company
      t.string :snippet
      t.string :url
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
