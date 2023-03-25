import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int offset;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, offset * -20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : Colors.black,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? Colors.black : Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
                scale: 3,
                child: Transform.translate(
                  offset: const Offset(-5, 10),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 60,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
