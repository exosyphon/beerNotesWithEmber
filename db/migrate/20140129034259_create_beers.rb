class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :beer_type
      t.string :notes

      t.timestamps
    end
  end
end
