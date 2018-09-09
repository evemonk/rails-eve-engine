# frozen_string_literal: true

class CreateEveAlliances < ActiveRecord::Migration[5.2]
  def change
    create_table :eve_alliances do |t|
      t.bigint :alliance_id
      t.bigint :creator_corporation_id
      t.bigint :creator_id
      t.datetime :date_founded
      t.bigint :executor_corporation_id
      t.bigint :faction_id
      t.string :name
      t.string :ticker

      t.timestamps
    end
  end
end
