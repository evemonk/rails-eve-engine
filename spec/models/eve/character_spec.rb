# frozen_string_literal: true

require 'rails_helper'

describe Eve::Character do
  it { should belong_to(:alliance).with_primary_key(:alliance_id) } # TODO: add .optional()

  it { should belong_to(:ancestry).with_primary_key(:ancestry_id) } # TODO: add .optional()

  it { should belong_to(:bloodline).with_primary_key(:bloodline_id) } # TODO: add .optional()

  it { should belong_to(:corporation).with_primary_key(:corporation_id) } # TODO: add .optional()

  it { should belong_to(:faction).with_primary_key(:faction_id) } # TODO: add .optional()

  it { should belong_to(:race).with_primary_key(:race_id) } # TODO: add .optional()
end
