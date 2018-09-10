# frozen_string_literal: true

require 'rails_helper'

describe RacesImporter do
  describe '#import' do
    let(:races) { double }

    before { expect(EveOnline::ESI::Races).to receive(:new).and_return(races) }

    let(:race_id) { double }

    let(:as_json) { double }

    let(:race) { double(race_id: race_id, as_json: as_json) }

    before { expect(races).to receive(:races).and_return([race]) }

    let(:eve_race) { instance_double(Eve::Race) }

    before { expect(Eve::Race).to receive(:find_or_initialize_by).with(race_id: race_id).and_return(eve_race) }

    before { expect(eve_race).to receive(:update!).with(as_json) }

    specify { expect { subject.import }.not_to raise_error }
  end
end
