Ethereum Price API
============

Ethereum Price is an Ethereum price feed API that tracks the spot price and movement direction of Ethereum in US dollars. Paid plans add 172 currencies, market cap, 24-hour volume, supply, all-time highs, 1-hour to 1-year changes, 30-day stats, and hourly and 30-day daily history.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-ethereumprice.svg)](https://pypi.org/project/apiverve-ethereumprice/)

This is a Python wrapper for the [Ethereum Price API](https://apiverve.com/marketplace/ethereum?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-ethereumprice
```

Using `pip3`:

```bash
pip3 install apiverve-ethereumprice
```

---

## Configuration

Before using the Ethereum Price API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_ethereumprice.apiClient import EthereumAPIClient

# Initialize the client with your APIVerve API key
api = EthereumAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Ethereum Price API documentation is found here: [https://docs.apiverve.com/ref/ethereum](https://docs.apiverve.com/ref/ethereum?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_ethereumprice.apiClient import EthereumAPIClient

# Initialize the client with your APIVerve API key
api = EthereumAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `EthereumAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_ethereumprice.apiClient import EthereumAPIClient, EthereumAPIClientError

api = EthereumAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except EthereumAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_ethereumprice.apiClient import EthereumAPIClient, EthereumAPIClientError

api = EthereumAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except EthereumAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_ethereumprice.apiClient import EthereumAPIClient, EthereumAPIClientError

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

# Using context manager ensures proper cleanup
with EthereumAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except EthereumAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_ethereumprice.apiClient import EthereumAPIClient

# Enable debug mode
api = EthereumAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_ethereumprice.apiClient import EthereumAPIClient

api = EthereumAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
