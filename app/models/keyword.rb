class Keyword < ActiveRecord::Base
	before_save { self.search_term = search_term.downcase }
	has_many :job_results
	validates :search_term, presence: true
	validates :location, presence: true
end
