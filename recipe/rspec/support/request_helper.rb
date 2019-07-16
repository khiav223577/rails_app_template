module RequestHelper
  def post(uri, options = {})
    super(*request_to(uri, options))
  end

  def get(uri, options = {})
    super(*request_to(uri, options))
  end

  def put(uri, options = {})
    super(*request_to(uri, options))
  end

  def delete(uri, options = {})
    super(*request_to(uri, options))
  end

  def request_to(uri, params: {}, headers: {})
    api_headers = {
      "ACCEPT" => "application/json",
      "HTTP_ACCEPT" => "application/json"
    }
    api_headers.merge!(@api_headers_with_auth || {})
    api_headers.merge!(headers)
    params[:access_token] = @access_token if @access_token
    [File.join(uri), params: params, headers: api_headers]
  end

  def request_params(*keys)
    keys.map { |k| [k, send(k)] }.to_h
  end

  def login(user)
    # For devise:
    # @api_headers_with_auth = user.create_new_auth_token

    # For token-baesd login:
    @access_token = user.generate_access_token
  end

  def seed_db
    Rails.application.load_seed
  end

  def mailer
    ActionMailer::Base.deliveries
  end
end

RSpec.configure do |config|
  config.include RequestHelper, type: :request
end
