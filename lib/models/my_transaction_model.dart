class MyTransactionModel {
  final String title, date, amount;
  final bool isWithdrawl;

  const MyTransactionModel({
    required this.isWithdrawl,
    required this.title,
    required this.date,
    required this.amount,
  });
}
