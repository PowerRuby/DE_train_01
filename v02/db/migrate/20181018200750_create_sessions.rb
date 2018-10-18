class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :topic
      t.text :description
      t.references :event, foreign_key: true
      t.references :speaker, foreign_key: true

      t.timestamps
    end
  end
end
