class CreateHobbiesPeople < ActiveRecord::Migration
  def change
    create_table :hobbies_people do |t|
      t.references :person, index: true
      t.references :hobby, index: true
    end
  end
end
