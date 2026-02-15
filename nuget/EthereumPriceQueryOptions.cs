using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.EthereumPrice
{
    /// <summary>
    /// Query options for the Ethereum Price API
    /// </summary>
    public class EthereumPriceQueryOptions
    {
        /// <summary>
        /// The currency to get the price in
        /// </summary>
        [JsonProperty("currency")]
        public string Currency { get; set; }
    }
}
