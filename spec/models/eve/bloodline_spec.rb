# frozen_string_literal: true

require 'rails_helper'

describe Eve::Bloodline do
  it { should belong_to(:corporation).with_primary_key(:corporation_id) } # TODO: add .optional()

  it { should belong_to(:race).with_primary_key(:race_id) } # TODO: add .optional()
end
