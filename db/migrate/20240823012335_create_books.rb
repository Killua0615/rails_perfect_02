class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.date :published_at
      t.integer :price

      t.timestamps
    end
  end
end
