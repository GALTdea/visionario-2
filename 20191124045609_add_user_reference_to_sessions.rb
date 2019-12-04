class AddUserReferenceToSessions < ActiveRecord::Migration[6.0]
  def change
    add_reference :sessions, :user,  foreign_key: true
    # add_reference :sessions, :user, null: false, foreign_key: true
    # had to delete null: false , since it wont' allow migration on existing records

  end
end


