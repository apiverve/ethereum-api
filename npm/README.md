# Ethereum Price API

Ethereum Price is an Ethereum price feed API that tracks the spot price and movement direction of Ethereum in US dollars. Paid plans add 172 currencies, market cap, 24-hour volume, supply, all-time highs, 1-hour to 1-year changes, 30-day stats, and hourly and 30-day daily history.

[![npm version](https://img.shields.io/npm/v/@apiverve/ethereum.svg)](https://www.npmjs.com/package/@apiverve/ethereum)

This is a JavaScript wrapper for the [Ethereum Price API](https://apiverve.com/marketplace/ethereum?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/ethereum
```

Using yarn:
```shell
yarn add @apiverve/ethereum
```

---

## Configuration

Before using the Ethereum Price API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Ethereum Price API documentation is found here: [https://docs.apiverve.com/ref/ethereum](https://docs.apiverve.com/ref/ethereum?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const ethereumAPI = require('@apiverve/ethereum');
const api = new ethereumAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
