class CreateMonologues < ActiveRecord::Migration[6.0]
  def change
    create_table :monologues do |t|
      t.text :content
    end
  end
end
