require_relative '../../helpers/authentication'
require 'bsd_qa_jfe_automation_api/response/response_json'

module BsdQaJfeAutomationApi
  # class for modelling /ingestHistory endpoint
  class IngestHistory < Service
    include BsdQaJfeAutomationApi::Response

    attr_accessor :host, :service_url
    def initialize
      @service_url = set_service_url(self)
    end

    # parsing

    # urls

    def service_url
      @service_url.to_s
    end

    def ingest_history_url
      url 'ingestHistory'
    end
  end
end
