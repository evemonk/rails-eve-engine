# frozen_string_literal: true

class ChangeEveCorporationShares < ActiveRecord::Migration[5.2]
  def change
    change_column :eve_corporations, :shares, :bigint
  end
end
