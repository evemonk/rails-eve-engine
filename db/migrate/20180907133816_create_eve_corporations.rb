# frozen_string_literal: true

class CreateEveCorporations < ActiveRecord::Migration[5.2]
  def change
    create_table :eve_corporations do |t|
      t.bigint :corporation_id
      t.bigint :alliance_id
      t.bigint :ceo_id
      t.bigint :creator_id
      t.datetime :date_founded
      t.text :description
      t.bigint :faction_id
      t.bigint :home_station_id
      t.integer :member_count
      t.string :name
      t.integer :shares
      t.float :tax_rate
      t.string :ticker
      t.text :corporation_url

      t.timestamps
    end
  end
end
