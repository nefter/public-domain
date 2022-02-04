class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.boolean :published
      t.integer :views

      t.timestamps
    end
  end
end
