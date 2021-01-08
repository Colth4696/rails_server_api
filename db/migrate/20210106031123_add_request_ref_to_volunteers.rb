class AddRequestRefToVolunteers < ActiveRecord::Migration[6.0]
  def change
    add_reference :volunteers, :request, null:false, index: true
end
