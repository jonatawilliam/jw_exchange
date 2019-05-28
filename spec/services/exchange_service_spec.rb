require 'spec_helper'
require 'json'
require './app/services/exchange_service'
 
describe 'Currency' do
  it 'exchange' do
    amount = rand(0..9999)
    answer = ExchangeService.new("EUR", "BRL", amount).perform
    expect(answer.is_a? Numeric).to eql(true)
    expect(answer != 0 || amount == 0).to eql(true)
  end
end