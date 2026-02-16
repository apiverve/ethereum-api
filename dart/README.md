# Ethereum Price API - Dart/Flutter Client

Ethereum Price is a simple tool for getting the current price of Ethereum. It returns the current price, market cap, 24-hour trading volume, and 24-hour price change in any currency.

[![pub package](https://img.shields.io/pub/v/apiverve_ethereum.svg)](https://pub.dev/packages/apiverve_ethereum)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Ethereum Price API](https://apiverve.com/marketplace/ethereum?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_ethereum: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_ethereum/apiverve_ethereum.dart';

void main() async {
  final client = EthereumClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'currency': 'USD'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
    "lastUpdated": "2026-02-07T12:00:00.000Z"
  }
}
```

## API Reference

- **API Home:** [Ethereum Price API](https://apiverve.com/marketplace/ethereum?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/ethereum](https://docs.apiverve.com/ref/ethereum?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
