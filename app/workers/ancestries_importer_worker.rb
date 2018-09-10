# frozen_string_literal: true

class AncestriesImporterWorker
  include Sidekiq::Worker

  def perform(*)
    AncestriesImporter.new.import
  end
end
