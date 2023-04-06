
1. The following code snippets returns List of map of string and object


    List<Map<String, Object>> get groupedTransactionsValues {
        return List.generate(7, (index) {
        
        //
          final weekDay = DateTime.now().subtract(Duration(days: index));
          print(weekDay);
          var totalSum = 0.0;

          for (var i = 0; i < recentTransactions.length; i++) {
            if (recentTransactions[i].date.day == weekDay.day &&
                recentTransactions[i].date.month == weekDay.month &&
                recentTransactions[i].date.year == weekDay.year) {
              totalSum += recentTransactions[i].amount;
            }
          }
          return {'days': DateFormat.E().format(weekDay), 'amount': totalSum};
        });
      }
      
      
  2. If we want to loop through list and return only selected specific data
    List<Transaction> get _recentTransactions {
    return _userTransactions.where((tx) {
      return tx.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }
