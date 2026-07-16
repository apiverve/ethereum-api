# Ethereum Price API - PHP Package

Ethereum Price is a simple tool for getting the current price of Ethereum. It returns the current price, market cap, 24-hour trading volume, and 24-hour price change in any currency.

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
    'hourly' => true
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
    $response = $client->execute(['currency' => 'USD', 'hourly' => true]);
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

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/ethereum?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://ethereum.apiverve.com?utm_source=php&utm_medium=readme](https://ethereum.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
