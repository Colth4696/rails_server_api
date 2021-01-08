class AddUserToVolunteer < ActiveRecord::Migration[6.0]
  def change
    add_reference :volunteers, :user, null: false, index: true
  end
end
