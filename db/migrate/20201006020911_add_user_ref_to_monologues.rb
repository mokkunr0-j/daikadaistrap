class AddUserRefToMonologues < ActiveRecord::Migration[6.0]
  def change
    add_reference :monologues, :user, null: false, foreign_key: true
  end
end
