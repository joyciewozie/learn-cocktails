class CreateCocktails < ActiveRecord::Migration[7.0]
  def change
    create_table :cocktails do |t|
      t.string :name, null: false
      t.string :status, null: false
      t.string :method, null: false
      t.string :base, null: false
      t.text :ingredients, null: false
      t.text :how_to_make, null: false

      t.timestamps
    end
  end
end
