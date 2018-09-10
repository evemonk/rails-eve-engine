# frozen_string_literal: true

class RacesImporterWorker
  include Sidekiq::Worker

  def perform(*)
    RacesImporter.new.import
  end
end
