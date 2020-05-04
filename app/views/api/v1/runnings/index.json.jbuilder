json.array! @runnings do |running|
  json.situation_id running.situation_id
  json.place running.place
  json.base_id running.base_id
  json.go_counts running.go_counts
  json.reason running.reason
end
