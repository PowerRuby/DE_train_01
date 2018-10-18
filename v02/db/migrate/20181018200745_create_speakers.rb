class CreateSpeakers < ActiveRecord::Migration[5.1]
  def change
    create_table :speakers do |t|
      t.string :first_name, ccsid: 1208
      t.string :last_name, ccsid: 1208
      t.decimal :birth_year, precision: 4, scale: 0

      t.timestamps
    end
  end
end
