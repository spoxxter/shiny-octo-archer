json.array!(@job_results) do |job_result|
  json.extract! job_result, :id, :jobtitle, :company, :snippet, :url, :latitude, :longitude
  json.url job_result_url(job_result, format: :json)
end
