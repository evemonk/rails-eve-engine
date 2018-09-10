# frozen_string_literal: true

class BloodlinesImporterWorker
  include Sidekiq::Worker

  def perform(*)
    BloodlinesImporter.new.import
  end
end
