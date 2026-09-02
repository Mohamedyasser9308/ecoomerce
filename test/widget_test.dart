import 'package:flutter_test/flutter_test.dart';

import 'package:ecommerceapp/main.dart';

void main() {
  testWidgets('shows the ShopEase splash screen', (tester) async {
    await tester.pumpWidget(const ShopEaseApp());

    expect(find.text('ShopEase'), findsOneWidget);
    expect(find.text('Better Shopping\nBetter Living'), findsOneWidget);
  });
}
