class AddReferenceUserToItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :user, index: true
  end
end
