# frozen_string_literal: true

require 'rails_helper'

describe BloodlinesImporter do
  describe '#import' do
    let(:bloodlines) { double }

    before { expect(EveOnline::ESI::Bloodlines).to receive(:new).and_return(bloodlines) }

    let(:bloodline_id) { double }

    let(:as_json) { double }

    let(:bloodline) { double(bloodline_id: bloodline_id, as_json: as_json) }

    before { expect(bloodlines).to receive(:bloodlines).and_return([bloodline]) }

    let(:eve_bloodline) { instance_double(Eve::Bloodline) }

    before { expect(Eve::Bloodline).to receive(:find_or_initialize_by).with(bloodline_id: bloodline_id).and_return(eve_bloodline) }

    before { expect(eve_bloodline).to receive(:update!).with(as_json) }

    specify { expect { subject.import }.not_to raise_error }
  end
end
