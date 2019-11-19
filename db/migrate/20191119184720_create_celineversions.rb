class CreateCelineversions < ActiveRecord::Migration[5.2]
  def change
    create_table :celineversions do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
