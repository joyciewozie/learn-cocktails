class CreateAttempts < ActiveRecord::Migration[7.0]
  def change
    create_table :attempts do |t|
      t.string :title, null: false
      t.string :comment, null: false
      t.date :date_of_attempt
      t.references :cocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
