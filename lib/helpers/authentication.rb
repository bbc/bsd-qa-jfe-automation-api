def j_session_id
  raise 'USERNAME and PASSWORD params must be set !!!' unless ENV['USERNAME'] && ENV['PASSWORD']
  options = { query: { username: ENV['USERNAME'], password: ENV['PASSWORD'] } }
  HTTParty.post('http://jfedev1604-int.jexworld.co.uk/jfe_support/login', options).request.options[:headers]['Cookie'].gsub('JSESSIONID=', '')
end

def set_service_url(service)
  raise 'SERVER param must be set !!!' unless ENV['SERVER']
  case ENV['SERVER']
  when '1604'
    service.service_url = 'http://jfedev1604-int.jexworld.co.uk/jfe_support/upload/api'
  end
end
