class AddKeywordIdToJobResults < ActiveRecord::Migration
  def change
  	add_column :job_results, :keyword_id, :interger
  end
end
