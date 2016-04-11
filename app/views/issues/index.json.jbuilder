json.array!(@issues) do |issue|
  json.extract! issue, :title, :id
  json.url issue_url(issue, format: :json)
end
