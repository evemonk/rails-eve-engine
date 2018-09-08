# frozen_string_literal: true

module Eve
  class Faction < ApplicationRecord
    belongs_to :corporation, primary_key: :corporation_id, optional: true

    # belongs_to :militia_corporation_id

    # belongs_to  :solar_system_id
  end
end
