class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name                      # name of the related dog
      t.string :breed                     # chosen among a list of breeds (is a dedicated 1-1 "breeds" table needed, then?)
      t.boolean :pedigree                 # true if a pedigree dog, false elseway
      t.references :stroll, index: true   # 1 dog make / has made / will make 0 to N strolls (Maybe no need to reference Stroll here there, then?)
      t.references :city, index: true     # 1 dog lives in 1 and only 1 city
      t.timestamps
    end
  end
end
