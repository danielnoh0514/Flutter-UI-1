import 'package:flutter/material.dart';
import 'package:flutter1/widget/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey Daniel',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Welcome Home',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '\$5 486 521',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(45)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 40,
                          ),
                          child: Text(
                            'Transfer',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(45)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 40,
                          ),
                          child: Text(
                            'Request',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CurrencyCard(
                    name: "Euro",
                    code: "EUR",
                    amount: "6 428",
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    offset: 0,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CurrencyCard(
                    name: "Bitcoin",
                    code: "BIT",
                    amount: "6 428",
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                    offset: 1,
                  ),
                  const CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "6 428",
                    icon: Icons.attach_money_rounded,
                    isInverted: false,
                    offset: 2,
                  ),
                  const CurrencyCard(
                    name: "Pound",
                    code: "GBP",
                    amount: "6 428",
                    icon: Icons.money,
                    isInverted: false,
                    offset: 3,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
