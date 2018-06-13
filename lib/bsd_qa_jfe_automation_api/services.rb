require_relative 'services/files'
require_relative 'services/destinations'
require_relative 'services/ingest_history'
require_relative 'services/jobs'
require_relative 'services/metadata'
require_relative 'services/reference_data'
require_relative 'response/response_json'

module BsdQaJfeAutomationApi
  # Namespace for Services model
  module Services
    def files
      @files ||= Files.new
    end

    def destinations
      @destination ||= Destinations.new
    end

    def ingest_history
      @ingest_history ||= IngestHistory.new
    end

    def jobs
      @jobs ||= Jobs.new
    end

    def metadata
      @metadata ||= Metadata.new
    end

    def reference_data
      @reference_data ||= ReferenceData.new
    end
  end
end
