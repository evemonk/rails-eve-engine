# frozen_string_literal: true

class CreateEveRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :eve_races do |t|
      t.bigint :alliance_id
      t.text :description
      t.string :name
      t.bigint :race_id

      t.timestamps
    end
  end
end
