json.array!(@dolists) do |dolist|
  json.extract! dolist, :id, :date, :do
  json.url dolist_url(dolist, format: :json)
end
