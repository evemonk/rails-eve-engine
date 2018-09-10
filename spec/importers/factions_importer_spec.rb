# frozen_string_literal: true

require 'rails_helper'

describe FactionsImporter do
  describe '#import' do
    let(:factions) { double }

    before { expect(EveOnline::ESI::Factions).to receive(:new).and_return(factions) }

    let(:faction_id) { double }

    let(:as_json) { double }

    let(:faction) { double(faction_id: faction_id, as_json: as_json) }

    before { expect(factions).to receive(:factions).and_return([faction]) }

    let(:eve_faction) { instance_double(Eve::Faction) }

    before { expect(Eve::Faction).to receive(:find_or_initialize_by).with(faction_id: faction_id).and_return(eve_faction) }

    before { expect(eve_faction).to receive(:update!).with(as_json) }

    specify { expect { subject.import }.not_to raise_error }
  end
end
