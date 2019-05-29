module ExchangesHelper
 
  def currency_list
    [
      'AUD', 'BGN', 'BRL', 'CAD', 'CHF', 'CNY', 'CZK', 'DKK', 'EUR', 'GBP',
      'HKD', 'HRK', 'HUF', 'IDR', 'ILS', 'INR', 'JPY', 'KRW', 'MXN',
      'MYR', 'NOK', 'NZD', 'PHP', 'PLN', 'RON', 'RUB', 'SEK', 'SGD',
      'THB', 'TRY', 'USD', 'ZAR'
    ]
  end

  def coins_currenty_list
    ExchangeService.coins
  end
end