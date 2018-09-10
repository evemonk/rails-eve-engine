# frozen_string_literal: true

require 'rails_helper'

describe Eve::Race do
  it { should be_an(ApplicationRecord) }

  it { should belong_to(:alliance).with_primary_key(:alliance_id) } # TODO: add .optional()
end
