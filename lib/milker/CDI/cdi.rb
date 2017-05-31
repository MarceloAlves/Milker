module Milker
  class CDI
    include HTTParty
    attr_accessor :producer_id

    base_uri 'milkmonitor.californiadairies.com/api/v1'

    def initialize(options={})
      @token = options.fetch(:token, nil)
    end

    def me
      self.class.get "/me", headers: { "Authorization": "Bearer #{@token}"}
    end

    def producers
      self.class.get "producers", headers: { "Authorization": "Bearer #{@token}"}
    end

    def component_tests(producer_id: nil)
      self.class.get "/component_tests/#{producer_id}", headers: { "Authorization": "Bearer #{@token}"}
    end
  end
end
