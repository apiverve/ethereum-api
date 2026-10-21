# Ethereum Price API - Ruby Gem

Ethereum Price is an Ethereum price feed API that tracks the spot price and movement direction of Ethereum in US dollars. Paid plans add conversion into 172 currencies, 24-hour trading volume, market capitalization, and hourly price snapshots.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_ethereum'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_ethereum
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_ethereum'

# Initialize the client
client = APIVerve::Ethereum::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  currency: "USD",
  hourly: true,
  hourly[].hour: 0,
  hourly[].price: 0,
  hourly[].timestamp: ""
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ currency: "USD", hourly: true, hourly[].hour: 0, hourly[].price: 0, hourly[].timestamp: "" })
  puts response["data"]
rescue APIVerve::Ethereum::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Ethereum::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Ethereum::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency": "USD",
    "price": 2685.12,
    "marketCap": 323000000000,
    "volume24h": 14850000000,
    "change24h": 2.34,
    "lastUpdated": "2026-02-07T12:00:00.000Z",
    "high24h": 2742.5,
    "low24h": 2618.75,
    "changeDirection": "up",
    "formatted": {
      "price": "$2,685.12",
      "marketCap": "$323.00B",
      "volume": "$14.85B",
      "priceWords": "two thousand six hundred eighty-five dollars"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ethereum?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/ethereum?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/ethereum?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
