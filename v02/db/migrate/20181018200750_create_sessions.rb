class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :topic
      t.text :description, ccsid: 1208
      t.references :event, foreign_key: true
      t.references :speaker, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
