json.array!(@next_steps) do |next_step|
  json.extract! next_step, :id, :description, :name, :owner, :date, :owner, :link
  json.url next_step_url(next_step, format: :json)
end
