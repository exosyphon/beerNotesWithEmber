class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.string :boil_notes

      t.timestamps
    end
  end
end
