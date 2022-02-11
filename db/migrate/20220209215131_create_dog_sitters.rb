class CreateDogSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_sitters do |t|
      t.string :first_name                # first name of the related dog sitter
      t.string :last_name                 # last name / family name
      t.string :gender                    # male / female / unknown or undefined. Should we keeo it as "M", "F" or "U", or make a dedicated table / model ?
      t.date :birthdate                   # a simple birthdate
      t.references :stroll, index: true   # 1 dog sitter make / has made / will make 0 to N strolls (Maybe no need to reference Stroll here there, then?)
      t.references :city, index: true     # 1 dog sitter lives in 1 and only 1 city 
      t.timestamps
    end
  end
end
