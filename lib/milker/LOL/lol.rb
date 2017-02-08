require 'httparty'

module Milker
  class LOL
    include HTTParty
    attr_accessor :start_date, :end_date

    base_uri 'apis.landolakesinc.com/MpolApi'

    def initialize(options={})
      @token = options.fetch(:token, nil)
    end

    def daily_tests(start_date: nil, end_date: nil)
      response = self.class.get "/DailyTests/#{@token}/#{start_date}/#{end_date}"
      convert_hash_keys(response.parsed_response)
    end

    def daily_receipts(start_date: nil, end_date: nil)
      response = self.class.get "/DailyRcpts/#{@token}/#{start_date}/#{end_date}"
      convert_hash_keys(response.parsed_response)
    end

    private

    # http://stackoverflow.com/a/8707236/1129050
    def convert_hash_keys(value)
      case value
      when Array
        value.map { |v| convert_hash_keys(v) }
      when Hash
        Hash[value.map { |k, v| [k.gsub(/(TEST|RCPT)_/, '').downcase, convert_hash_keys(v)] }]
      else
        value
     end
    end
  end
end
