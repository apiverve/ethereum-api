# Ethereum Price API - PHP Package

Ethereum Price is an Ethereum price feed API that tracks the spot price and movement direction of Ethereum in US dollars. Paid plans add conversion into 172 currencies, 24-hour trading volume, market capitalization, and hourly price snapshots.

## Installation

Install via Composer:

```bash
composer require apiverve/ethereum
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Ethereum\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'currency' => 'USD',
    'hourly' => true,
    'hourly[].hour' => 0,
    'hourly[].price' => 0,
    'hourly[].timestamp' => ''
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Ethereum\Client;
use APIVerve\Ethereum\Exceptions\APIException;
use APIVerve\Ethereum\Exceptions\ValidationException;

try {
    $response = $client->execute(['currency' => 'USD', 'hourly' => true, 'hourly[].hour' => 0, 'hourly[].price' => 0, 'hourly[].timestamp' => '']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ethereum?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/ethereum?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/ethereum?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
