# frozen_string_literal: true

require 'rails_helper'

describe Eve::Corporation do
  it { should be_an(ApplicationRecord) }

  it { should belong_to(:alliance).with_primary_key(:alliance_id) } # TODO: add .optional()

  it { should belong_to(:ceo).with_primary_key(:character_id).class_name('Eve::Character') } # TODO: add .optional()

  it { should belong_to(:creator).with_primary_key(:character_id).class_name('Eve::Character') } # TODO: add .optional()

  it { should belong_to(:faction).with_primary_key(:faction_id) } # TODO: add .optional()
end
