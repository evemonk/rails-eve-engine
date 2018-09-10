# frozen_string_literal: true

require 'rails_helper'

describe Eve::Alliance do
  it { should be_an(ApplicationRecord) }

  it { should belong_to(:creator_corporation).with_primary_key(:corporation_id).class_name('Eve::Corporation') } # TODO: add .optional()

  it { should belong_to(:creator).with_primary_key(:character_id).class_name('Eve::Character') } # TODO: add .optional()

  it { should belong_to(:faction).with_primary_key(:faction_id) } # TODO: add .optional()

  it { should have_many(:alliance_corporations).with_primary_key(:alliance_id) }

  it { should have_many(:corporations).through(:alliance_corporations) }
end
