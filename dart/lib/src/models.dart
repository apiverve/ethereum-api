/// Response models for the Ethereum Price API.

/// API Response wrapper.
class EthereumResponse {
  final String status;
  final dynamic error;
  final EthereumData? data;

  EthereumResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory EthereumResponse.fromJson(Map<String, dynamic> json) => EthereumResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? EthereumData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Ethereum Price API.

class EthereumData {
  String? currency;
  double? price;
  int? marketCap;
  int? volume24h;
  double? change24h;
  String? lastUpdated;

  EthereumData({
    this.currency,
    this.price,
    this.marketCap,
    this.volume24h,
    this.change24h,
    this.lastUpdated,
  });

  factory EthereumData.fromJson(Map<String, dynamic> json) => EthereumData(
      currency: json['currency'],
      price: json['price'],
      marketCap: json['marketCap'],
      volume24h: json['volume24h'],
      change24h: json['change24h'],
      lastUpdated: json['lastUpdated'],
    );
}

class EthereumRequest {
  String? currency;

  EthereumRequest({
    this.currency,
  });

  Map<String, dynamic> toJson() => {
      if (currency != null) 'currency': currency,
    };
}
