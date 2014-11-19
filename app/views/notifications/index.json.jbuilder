json.array!(@notifications) do |notification|
  json.extract! notification, :id, :event, :status
  json.url notification_url(notification, format: :json)
end
