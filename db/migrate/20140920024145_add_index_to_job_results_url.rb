class AddIndexToJobResultsUrl < ActiveRecord::Migration
  def change
  	add_index :job_results, :url, unique: true
  end
end
