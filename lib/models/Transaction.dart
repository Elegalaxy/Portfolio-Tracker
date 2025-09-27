class Transaction {
  final String id;           // uuid
  final String portfolioId;  // fk
  final String symbol;       // "BTC"
  final double entryPrice;   // entry price
  final double amount;       // coin amount
  final String? note;
  final int executedAt;      // epoch ms

  Transaction({
    required this.id,
    required this.portfolioId,
    required this.symbol,
    required this.entryPrice,
    required this.amount,
    this.note,
    required this.executedAt,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'] as String,
      portfolioId: json['portfolioId'] as String,
      symbol: json['symbol'] as String,
      entryPrice: (json['entryPrice'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      note: json['note'] as String?,
      executedAt: json['executedAt'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'portfolioId': portfolioId,
      'symbol': symbol,
      'entryPrice': entryPrice,
      'amount': amount,
      'note': note,
      'executedAt': executedAt,
    };
  }
}
