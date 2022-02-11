class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name           # name of the city (Yeepee kaï, Cowboys! Looks like you're a genius ;-)
      t.string :zip_code            # zip code of the related city (just added to make city a little more interesting)
      t.timestamps
    end
  end
end
