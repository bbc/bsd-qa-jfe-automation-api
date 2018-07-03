module BsdQaJfeAutomationApi
  # Base class for bsd service models
  class Service
    include HTTParty
    attr_accessor :code, :headers, :body
    default_timeout 20

    def url(path)
      if self.class.base_uri
        "#{self.class.base_uri}/#{path}"
      else
        "#{service_url}/#{path}"
      end
    end

    protected

    def safe_get(path, query = {})
      rescue_connection_errors(path) do
        self.class.get(path, query: query, cookies: { JSESSIONID: j_session_id })
      end
    end

    def safe_post(path, query = {}, payload = {})
      rescue_connection_errors(path) do
        self.class.post(path, query: query, body: payload, cookies: { JSESSIONID: j_session_id })
      end
    end

    private

    def rescue_connection_errors(url)
      yield
    rescue Net::OpenTimeout, SocketError => e
      raise "Failed to connect to #{url}: #{e}"
    end
  end
end
