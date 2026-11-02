# [Ethereum Price API](https://apiverve.com/marketplace/ethereum?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Ethereum Price is an Ethereum price feed API that tracks the spot price and movement direction of Ethereum in US dollars. Paid plans add 172 currencies, market cap, 24-hour volume, supply, all-time highs, 1-hour to 1-year changes, 30-day stats, and hourly and 30-day daily history.

The Ethereum Price API provides a simple, reliable way to integrate ethereum price functionality into your applications. Built for developers who need production-ready ethereum price capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/ethereum?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/ethereum?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/ethereum)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.EthereumPrice)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-ethereum/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_ethereum)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/ethereum)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_ethereum)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callEthereumPriceAPI() {
    try {
        const response = await fetch('https://api.apiverve.com/v1/ethereum', {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callEthereumPriceAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/ethereum" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/ethereum
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/ethereum) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.EthereumPrice
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.EthereumPrice) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-ethereum
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-ethereum/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_ethereum
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_ethereum) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/ethereum
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/ethereum) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_ethereum
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_ethereum) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:ethereum-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/ethereum-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Ethereum Price API](https://apiverve.com/marketplace/ethereum?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/ethereum](https://docs.apiverve.com/ref/ethereum)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Ethereum Price API is commonly used for:

- **Web Applications** - Add ethereum price features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with ethereum price capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Ethereum Price API:

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "price": 2349.8,
    "marketCap": 287076628921,
    "volume24h": 9044419267,
    "change24h": 1.11,
    "currency": "USD",
    "lastUpdated": "2026-10-27T17:41:09.843Z",
    "high24h": 2349.8,
    "low24h": 2295.57,
    "changeAmount24h": 26.03,
    "change1h": 0.01,
    "change7d": -3.87,
    "change30d": -12.82,
    "change1y": -43.81,
    "marketCapRank": 2,
    "circulatingSupply": 122167205,
    "totalSupply": 122167205,
    "maxSupply": null,
    "fullyDilutedValuation": 287076628921,
    "allTimeHigh": 4946.05,
    "allTimeHighDate": "2025-08-24T11:21:03.000Z",
    "percentFromAllTimeHigh": -52.49,
    "allTimeLow": 0.43,
    "allTimeLowDate": "2015-10-19T16:00:00.000Z",
    "high30d": 2725.91,
    "low30d": 2320.67,
    "average30d": 2509.84,
    "volatility30d": 1.7701,
    "daily": [
      {
        "date": "2026-09-28",
        "price": 2687.92,
        "marketCap": 328161568756.55,
        "volume24h": 17048616414.53
      },
      {
        "date": "2026-09-29",
        "price": 2677.38,
        "marketCap": 326882384721.91,
        "volume24h": 15609520153.84
      },
      {
        "date": "2026-09-30",
        "price": 2684.71,
        "marketCap": 327783962324.34,
        "volume24h": 13831956665.77
      },
      {
        "date": "2026-10-01",
        "price": 2705.3,
        "marketCap": 330305392614.81,
        "volume24h": 13688689734
      },
      {
        "date": "2026-10-02",
        "price": 2667.95,
        "marketCap": 325753252610.38,
        "volume24h": 18947257093.52
      },
      {
        "date": "2026-10-03",
        "price": 2686.89,
        "marketCap": 328073789645.7,
        "volume24h": 5155711549.09
      },
      {
        "date": "2026-10-04",
        "price": 2725.91,
        "marketCap": 332846167523.65,
        "volume24h": 6168266219.04
      },
      {
        "date": "2026-10-05",
        "price": 2710.42,
        "marketCap": 330962511259.41,
        "volume24h": 12360388631.33
      },
      {
        "date": "2026-10-06",
        "price": 2697.17,
        "marketCap": 329352893752.81,
        "volume24h": 11013438109.18
      },
      {
        "date": "2026-10-07",
        "price": 2573.23,
        "marketCap": 314225721923.29,
        "volume24h": 19380856621.94
      },
      {
        "date": "2026-10-08",
        "price": 2472.73,
        "marketCap": 301959830755.32,
        "volume24h": 19211446963.28
      },
      {
        "date": "2026-10-09",
        "price": 2485.7,
        "marketCap": 303551579906.16,
        "volume24h": 9237247812.48
      },
      {
        "date": "2026-10-10",
        "price": 2504.31,
        "marketCap": 305831441169.97,
        "volume24h": 5821686502.41
      },
      {
        "date": "2026-10-11",
        "price": 2534.63,
        "marketCap": 309541484283.78,
        "volume24h": 8566468363.63
      },
      {
        "date": "2026-10-12",
        "price": 2445.89,
        "marketCap": 298710869490.48,
        "volume24h": 13499532438.03
      },
      {
        "date": "2026-10-13",
        "price": 2496.59,
        "marketCap": 304910319328.61,
        "volume24h": 12664145444.95
      },
      {
        "date": "2026-10-14",
        "price": 2419.69,
        "marketCap": 295525520649.86,
        "volume24h": 14011311984.69
      },
      {
        "date": "2026-10-15",
        "price": 2439.96,
        "marketCap": 298008599988.16,
        "volume24h": 19072612435.26
      },
      {
        "date": "2026-10-16",
        "price": 2420.56,
        "marketCap": 295645987052.46,
        "volume24h": 12413691615.08
      },
      {
        "date": "2026-10-17",
        "price": 2400.31,
        "marketCap": 293179515941.9,
        "volume24h": 6392442801.19
      },
      {
        "date": "2026-10-18",
        "price": 2407.84,
        "marketCap": 294106909234.62,
        "volume24h": 8562877335.43
      },
      {
        "date": "2026-10-19",
        "price": 2405.92,
        "marketCap": 293879026865.33,
        "volume24h": 9189766395.66
      },
      {
        "date": "2026-10-20",
        "price": 2446.49,
        "marketCap": 298841751224.83,
        "volume24h": 11659953648.21
      },
      {
        "date": "2026-10-21",
        "price": 2472.68,
        "marketCap": 302036532023.77,
        "volume24h": 13777880330.78
      },
      {
        "date": "2026-10-22",
        "price": 2386.48,
        "marketCap": 291514722930.02,
        "volume24h": 12782685343.56
      },
      {
        "date": "2026-10-23",
        "price": 2384.75,
        "marketCap": 291309985945.85,
        "volume24h": 9909686957.94
      },
      {
        "date": "2026-10-24",
        "price": 2356.57,
        "marketCap": 287874457234.69,
        "volume24h": 9030947692.42
      },
      {
        "date": "2026-10-25",
        "price": 2326.83,
        "marketCap": 284248605755.09,
        "volume24h": 6329620691.52
      },
      {
        "date": "2026-10-26",
        "price": 2320.67,
        "marketCap": 283503198237.63,
        "volume24h": 10108268440.44
      },
      {
        "date": "2026-10-27",
        "price": 2349.8,
        "marketCap": 287076628921,
        "volume24h": 9044419267
      }
    ],
    "changeDirection": "up",
    "formatted": {
      "price": "$2,349.80",
      "marketCap": "$287.08B",
      "volume": "$9.04B",
      "priceWords": "two thousand, three hundred fifty dollars"
    }
  }
}
```

---

## Support & Community

- 🏠 **API Home**: [Ethereum Price API](https://apiverve.com/marketplace/ethereum?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
