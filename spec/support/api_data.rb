RSpec.configure do |config|
  config.before(:each) do   
    stub_request(:get, /currencydatafeed.com/ )
    .with(headers: {
      'Accept'=>'*/*'
    }).to_return(status: 200, body: '
      {
        "status": true,
        "currency": [
            {
                "currency": "EUR/BRL",
                "value": "4.51244",
                "date": "2019-05-27 16:12:09",
                "type": "original"
            }
        ]
      }', headers: {})
  end
end