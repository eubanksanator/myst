json.array!(@photos) do |photo|
  json.extract! photo, :id, :caption, :owner_id, :image
  json.url photo_url(photo, format: :json)
end
