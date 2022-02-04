class AddReferenceCollectionToItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :collection, index: true
  end
end
