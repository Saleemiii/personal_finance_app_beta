import 'package:finance_app/app/domain/models/expense.dart';
import 'package:finance_app/app/ui/pages/home/widgets/my_dismissble.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';

class CategoryController extends SimpleNotifier {
  late final ExpenseType currentExpenseType;
  late final List<MyDismissible> _allExpenses;

  CategoryController() {
    _init();
  }

  List<MyDismissible> get expensesToDisplay => _allExpenses
      .where((element) => element.expense.type == currentExpenseType)
      .toList();

  double get totalAmount => expensesToDisplay.fold(
      0,
      (previousValue, element) =>
          element.expense.direction == ExpenseDirection.sent
              ? previousValue - element.expense.price
              : previousValue + element.expense.price);

  _init() {
    final args = router.arguments as Map<String, dynamic>;
    currentExpenseType = args['selectedCategory'] as ExpenseType;
    _allExpenses = args['allExpenses'] as List<MyDismissible>;
  }
}

// final ww = StreamBuilder(
//     stream: FirebaseFirestore.instance
//         .collection('expenses')
//         .orderBy('date', descending: true)
//         .snapshots(),
//     builder: (_, __) {
//       print(__.connectionState);
//       if (__.connectionState == ConnectionState.waiting) {
//         return const CircularProgressIndicator();
//       }

//       ;
//       if (__.hasError) {
//         return Text(__.error.toString());
//       }
//       if (__.hasData) {
//         if (__.data != null) {
//           List<MyDismissible> list = __.data!.docs.map(((e) {
//             return MyDismissible(
//               expense: Expense(
//                 price: e.get('price'),
//                 detail: e.get('detail'),
//                 category: null,
//                 date: (e.get('date') as Timestamp).toDate(),
//                 pictureUrl: null,
//                 picturePath: e.get('imagePath'),
//                 id: e.id,
//               ),
//             );
//           })).toList();

//           return ListView(
//             children: list,
//           );
//         }
//         return Text('null');
//       }
//       return const CircularProgressIndicator();
//     });
