require_relative 'service'
require_relative '../response/response_json'
module BsdQaJfeAutomationApi
  # class for modelling /files endpoint
  class Files < Service
    include BsdQaJfeAutomationApi::Response

    attr_accessor :host, :service_url
    def initialize
      @service_url = set_service_url(self)
    end

    def files
      ResponseJson.new(safe_get(files_url))
    end

    def file_exists?(file_name: nil, name_type: nil)
      name_type.eql?('src') ? file_names.map(&:name).include?(file_name) : file_names.map(&:niceName).include?(file_name)
    end

    def nice_name_exists?(file_name: nil)
      file_names.map(&:niceName).include?(file_name)
    end

    # parsing

    def file_names
      files.body.files.each(&:name)
    end

    # urls

    def service_url
      @service_url.to_s
    end

    def files_url
      url 'files'
    end
  end
end
