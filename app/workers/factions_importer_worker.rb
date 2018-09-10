# frozen_string_literal: true

class FactionsImporterWorker
  include Sidekiq::Worker

  def perform(*)
    FactionsImporter.new.import
  end
end
