# frozen_string_literal: true

module Eve
  class Alliance < ApplicationRecord
    belongs_to :creator_corporation, primary_key: :corporation_id, class_name: 'Eve::Corporation', optional: true

    belongs_to :creator, primary_key: :character_id, class_name: 'Eve::Character', optional: true

    # belongs_to :executor_corporation_id

    belongs_to :faction, primary_key: :faction_id, optional: true
  end
end
