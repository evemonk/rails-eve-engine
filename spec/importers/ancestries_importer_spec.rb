# frozen_string_literal: true

require 'rails_helper'

describe AncestriesImporter do
  describe '#import' do
    let(:ancestries) { double }

    before { expect(EveOnline::ESI::Ancestries).to receive(:new).and_return(ancestries) }

    let(:ancestry_id) { double }

    let(:as_json) { double }

    let(:ancestry) { double(ancestry_id: ancestry_id, as_json: as_json) }

    before { expect(ancestries).to receive(:ancestries).and_return([ancestry]) }

    let(:eve_ancestry) { instance_double(Eve::Ancestry) }

    before { expect(Eve::Ancestry).to receive(:find_or_initialize_by).with(ancestry_id: ancestry_id).and_return(eve_ancestry) }

    before { expect(eve_ancestry).to receive(:update!).with(as_json) }

    specify { expect { subject.import }.not_to raise_error }
  end
end
