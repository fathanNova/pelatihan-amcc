import 'package:finli_app/theme/color.dart' show AppColors;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final transactions = const [
    {
      "title": "Gaji",
      "subtitle": "Pekerjaan",
      "amount": "2.000.000",
      "isIncome": true,
    },
    {
      "title": "Belanja",
      "subtitle": "Mall",
      "amount": "500.000",
      "isIncome": false,
    },
  ];

  final tips = const [
    {"title": "Cara mengatur keuangan", "image": "assets/gambar_carousel.png"},
    {"title": "Tips menabung cerdas", "image": "assets/gambar_carousel2.png"},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.04;
    final cardHeight = size.height * 0.25;
    final carouselHeight = size.height * 0.23;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              'Hello, ',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            Text('Nova', style: TextStyle(color: AppColors.blue, fontSize: 22)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(padding),
        children: [
          Container(
            height: cardHeight,
            padding: EdgeInsets.all(size.width * 0.05),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Nova",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Total Balance:",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  'Rp 1.000.000',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Icon(Icons.arrow_downward, color: Colors.white, size: 20),
                    SizedBox(width: 5),
                    Text("Income", style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Icon(Icons.arrow_upward, color: Colors.white, size: 20),
                    SizedBox(width: 5),
                    Text("Expense", style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'Rp 1.500.000',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      'Rp 500.000',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.025),

          // Transaction List
          const Text(
            "Latest Transactions",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ...transactions.map((tx) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    (tx['isIncome'] as bool)
                        ? Colors.blue[100]
                        : Colors.red[100],
                child: Icon(
                  (tx['isIncome'] as bool)
                      ? Icons.arrow_downward
                      : Icons.arrow_upward,
                  color: (tx['isIncome'] as bool) ? Colors.blue : Colors.red,
                ),
              ),
              title: Text(tx['title'] as String),
              subtitle: Text(tx['subtitle'] as String),
              trailing: Text(
                "${(tx['isIncome'] as bool) ? '+' : '-'}Rp ${(tx['amount'] as String)}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: (tx['isIncome'] as bool) ? Colors.green : Colors.red,
                ),
              ),
            );
          }),
          SizedBox(height: size.height * 0.03),

          // Tips Carousel
          SizedBox(
            height: carouselHeight,
            child: PageView.builder(
              itemCount: tips.length,
              controller: PageController(viewportFraction: 0.8),
              itemBuilder: (context, index) {
                final tip = tips[index];
                return Container(
                  margin: EdgeInsets.only(right: size.width * 0.04),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(tip['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.black45,
                      child: Text(
                        tip['title']!,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
