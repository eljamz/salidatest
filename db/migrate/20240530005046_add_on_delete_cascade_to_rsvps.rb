class AddOnDeleteCascadeToRsvps < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :rsvps, :events
    add_foreign_key :rsvps, :events, on_delete: :cascade
  end
end
