json.array!(@feedback_subjects) do |feedback_subject|
  json.extract! feedback_subject, :name
  json.url feedback_subject_url(feedback_subject, format: :json)
end
