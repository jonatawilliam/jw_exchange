require 'rest-client'
require 'json'
 
class ExchangeService
  def initialize(source_currency, target_currency, amount)
    @source_currency = source_currency
    @target_currency = target_currency
    @amount = amount.to_f
  end
 
 
  def perform
    begin
      exchange_api_url = Rails.application.credentials[Rails.env.to_sym][:currency_api_url]
      exchange_api_key = Rails.application.credentials[Rails.env.to_sym][:currency_api_key]
      url = "#{exchange_api_url}/v1/exchangerate/#{@source_currency}/#{@target_currency}?apikey=#{exchange_api_key}"
      answer = RestClient.get url
      value = JSON.parse(answer.body)['rate'].to_f
      sprintf('%.10f', value * @amount)
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end

  def self.coins
    exchange_api_url = Rails.application.credentials[Rails.env.to_sym][:currency_api_url]
    exchange_api_key = Rails.application.credentials[Rails.env.to_sym][:currency_api_key]
    url = "#{exchange_api_url}/v1/assets?apikey=#{exchange_api_key}"
    answer = RestClient.get url
    @coins ||= JSON.parse(answer.body).collect{ |coin| ["#{coin["asset_id"]} - #{coin["name"]}", coin["asset_id"]] }
  end
end
