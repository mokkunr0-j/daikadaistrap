class AddImageToMonologues < ActiveRecord::Migration[6.0]
  def change
    add_column :monologues, :image, :text
  end
end
