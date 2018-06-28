module BsdQaJfeAutomationApi
  module Response
    # response class for parsing json responses {}
    class ResponseJson
      attr_reader :code, :body, :headers, :results, :errors
      def initialize(response)
        @code = response.code
        @body = Hashie::Mash.new(JSON.parse(response.body))
        @headers = response.headers
        @results = @body.results || []
        @errors = @body.errors || []
      end
    end

    # response class for parsing json responses [{}]
    class ResponseJson2
      attr_reader :code, :body, :headers
      def initialize(response)
        @code = response.code
        @body = JSON.parse(response.body).map { |hash| Hashie::Mash.new(hash) }
        @headers = response.headers
      end
    end
  end
end
