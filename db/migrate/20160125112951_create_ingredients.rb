class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :calories, precision: 8, scale: 2, default: 0

      t.timestamps null: false
    end
  end
end
