require_relative '../../helpers/authentication'
require 'bsd_qa_jfe_automation_api/response/response_json'

module BsdQaJfeAutomationApi
  # /loginInfo endpoint
  class LoginInfo < Service
    include BsdQaJfeAutomationApi::Response

    attr_accessor :host, :service_url
    def initialize
      @service_url = set_service_url(self)
    end

    def info
      ResponseJson.new(safe_get(login_info_url))
    end

    # urls

    def service_url
      @service_url.to_s
    end

    def login_info_url
      url 'loginInfo'
    end
  end
end
