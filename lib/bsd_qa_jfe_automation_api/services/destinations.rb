require_relative '../../helpers/authentication'
require 'bsd_qa_jfe_automation_api/response/response_json'

module BsdQaJfeAutomationApi
  # class for modelling /destinations endpoint
  class Destinations < Service
    include BsdQaJfeAutomationApi::Response

    attr_accessor :host, :service_url
    def initialize
      @service_url = set_service_url(self)
    end

    def destinations
      ResponseJson.new(safe_get(destinations_url))
    end

    # parsing

    def site_names
      destinations.body.first[1].map(&:siteName)
    end

    # urls

    def service_url
      @service_url.to_s
    end

    def destinations_url
      url 'destinations'
    end
  end
end
