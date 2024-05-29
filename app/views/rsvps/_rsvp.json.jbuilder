json.extract! rsvp, :id, :event_id, :name, :email, :created_at, :updated_at
json.url rsvp_url(rsvp, format: :json)
