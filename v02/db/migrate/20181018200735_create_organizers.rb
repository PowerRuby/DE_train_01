class CreateOrganizers < ActiveRecord::Migration[5.1]
  def change
    create_table :organizers do |t|
      t.string :name
      t.text :description, ccsid: 1208

      t.timestamps
    end
  end
end
