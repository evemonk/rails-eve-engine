# frozen_string_literal: true

class CreateEveAncestries < ActiveRecord::Migration[5.2]
  def change
    create_table :eve_ancestries do |t|
      t.bigint :ancestry_id
      t.bigint :bloodline_id
      t.text :description
      t.integer :icon_id
      t.string :name
      t.text :short_description

      t.timestamps
    end
  end
end
