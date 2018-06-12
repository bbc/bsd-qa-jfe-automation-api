require_relative '../../helpers/authentication'
require 'bsd_qa_jfe_automation_api/response/response_json'

module BsdQaJfeAutomationApi
  # class for modelling /metadata endpoint
  class Metadata < Service
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

    def metadata_url
      url 'metadata'
    end
  end
end
