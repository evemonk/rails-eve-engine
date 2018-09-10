# frozen_string_literal: true

require 'rails_helper'

describe Eve::Ancestry do
  it { should be_an(ApplicationRecord) }

  it { should belong_to(:bloodline).with_primary_key(:bloodline_id) } # TODO: add .optional()
end
