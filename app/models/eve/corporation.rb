# frozen_string_literal: true

module Eve
  class Corporation < ApplicationRecord
    belongs_to :alliance, primary_key: :alliance_id, optional: true

    belongs_to :ceo, primary_key: :character_id, class_name: 'Eve::Character', optional: true

    belongs_to :creator, primary_key: :character_id, class_name: 'Eve::Character', optional: true

    belongs_to :faction, primary_key: :faction_id, optional: true

    # belongs_to :home_station_id
  end
end
