class JobResult < ActiveRecord::Base
	belongs_to :keyword
	validates :jobtitle, presence: true
	validates :company, presence: true
	validates :snippet, presence: true
	validates :url, presence: true, uniqueness: { case_sensitve: false }
	validates :latitude, presence: true
	validates :longitude, presence: true
end
