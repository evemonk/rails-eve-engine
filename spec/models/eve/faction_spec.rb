# frozen_string_literal: true

require 'rails_helper'

describe Eve::Faction do
  it { should belong_to(:corporation).with_primary_key(:corporation_id) } # TODO: add .optional()
end
