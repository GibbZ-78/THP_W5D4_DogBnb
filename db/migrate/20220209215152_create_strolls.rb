class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.date :date                              # could maybe be a datetime instead?
      t.references :dog_sitter, index: true     # 1 stroll has 1 and only 1 dog sitter in charge
      t.references :city, index: true           # 1 stroll takes place in 1 and only 1 city
      t.references :???, index: true            # 1 stroll embark 1 to N dogs... A dedicated table / model appears needed here...
      t.timestamps
    end
  end
end
