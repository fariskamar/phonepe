import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Phonepay(),
    debugShowCheckedModeBanner: false,
  ));
}

class Phonepay extends StatefulWidget {
  const Phonepay({super.key});

  @override
  State<Phonepay> createState() => _PhonepayState();
}

class _PhonepayState extends State<Phonepay> {
  int index = 0;

  final List<Widget> pages = [
    Image.network(
      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAATYAAACjCAMAAAA3vsLfAAAAk1BMVEXu9PRfJZ/////x+PZTAJnw9/X0+/hXD5tZFZxVBJpbHZ3Lxt7e3er3//paGZx7UK/n6vDh4uy2qdFMAJaUeL2plsnZ1+fl5+7Cudnl3++7r9SgjMNkLqLW0uVxRKmAWbGyo89qN6V8Va9uPqe1oNGWe76MbbimlMeHZrWeh8ODYLP28/qvmM3w6/bIwd2Tc7zVyeV8+bNxAAAEbUlEQVR4nO3aDXOqOBQGYCAhX5iIQJWi4kdFwd7q/f+/bhNA6d2dabs7945b5n1mOnVi2pG3h5yEqecBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwH8SEuaQR3+Ob4WF621Wn4/LPNbhoz/Md0G85EVyo5QR0lzn+tGf53tg0U4q/8bQxkPBfU4fqA1NUMH74Hi5wBL3GX2iNipxeA1+0FvBrRaot4+xPHVJqU0QBJW85TZFbB8K477ERPkaBGdxu0+X7NGf7H9NZ7ekzM7mVppbbrOh3vpX4Vcr8MsTv61w0RabolYqnoNXX3ZNVTR9uTEvnsTEtog4mn0lDjd/EY68pZCta5/q+PbcCoLXt7edy02tugmLo28TLS+MbFMaf+E3Zis7f1eM+x7XZ5eRuQbvXNsbla5dbZGI+sZwRXOdcDr5tNzCSarsfEO3o86NdSuZ2hyCoKnPhQ1ts+oWt8TdaCSS4imOfPXCbGwz3Z9Z3fnVRdgeZN8PhRNqmnj9olQ8zBqfRd8QeBUEe0F/BMG0HxFPrl5sbLxguhE8Trg4VVkRuu6bVNfTnHnhrGiuVRLbuLzkeK4iZmMTJ+YiXhNva4fWY6y6cNafDIyNbaOErblpf8wSy3tshCScLxLucylozcLZSnLJacFiab9xubOb4z21r2jC2tjIRdLIK92bNB9hd/gottMQG+tiU+fqRdFIH4Wpm5XicSzUdHkUItMJNcdiqji5x7Y+SJMVpVmNMDYv7EMyWRAceXuT9iP3tY0XWl+NiNu1bWKXOqZUyXTO6SUW4knrs9npzBhPzyWd29js0EnQSW0U0/bHP+8j34/edympMgie683PIbZbJ5Vqf7DldXad1G7cpFgSo/Y6tIHkLjbGKrEitvsW+da42FT5lBm1Yxu1yvODGGVs7KnvAPJnv/24xea3mzQbmy8o5/6E3WNjNjYWRvQWW9bFlqYpTW1svqFcyMj9QdqhMcYWzm5PPVRuM3u7xyaqtgW6ajvW9Sl2beHXavtbbGo9t2wnVef63MyIi23eDj36Gv8EXd9PoUK9W9tkd7k2Nls4zEY4xMZ8tfPcPRsNsVVCLLSeuX0b32q3XWO1EZ7Wk0df4J8xlJtL7t5J+2LrYmt7IelOCVQsdcOVXwplvHtsXkTVqtqnmXaxdXWaU7Wrpmkzxo2bXd22Q26i6WOz5dQJozS9dLFtU7tMEeVysJs0KUXE4jRdMrZMhV0j3cMAe6SapOmh23KwZTuUjHED4rlHR3IotzprUzOT+8VGUX+AX0SRe2LinoOw9faQe8QL52v3ZmSbLlvkSR7bg8N9vsdmRXKJx1lsFquGelNupRP+fCiR4eFZ9yrsz6LkH0OE/Dr/PjRSrDDCH5KjdTzmq/192KLxpVCW4XJ6Gelji98vZHHebMpyetzO8f8M/wZhjLgvVBoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAY/0FiUFGCPN78aMAAAAASUVORK5CYII=',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7UioR5E5YdQq_7DzT1RnjkEgV44i1pg-B-g&s',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0sYd1Pc0M4yu-eP45YxVHirlKsXwkeD0JEg&s',
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text("Add Address"),
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 5),
          Icon(Icons.question_mark),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.85,
              ),
              items: pages.map((page) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: page,
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(97, 122, 121, 121),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Money Transfers"),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildMoneyTransferOption(
                                  icon: Icons.person,
                                  label: 'To mobile number',
                                ),
                                _buildMoneyTransferOption(
                                  icon: Icons.home,
                                  label: "To Bank/UPI ID",
                                ),
                                _buildMoneyTransferOption(
                                  icon: Icons.arrow_downward_rounded,
                                  label: "To Self Account",
                                ),
                                _buildMoneyTransferOption(
                                  icon: Icons.home_outlined,
                                  label: "Check Balance",
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              _buildUpiOption("UPI Lite:", "Try Now"),
                              SizedBox(width: 70),
                              _buildUpiOption("UPI ID:8606@axl >", ""),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            _buildNavigationButtons(),
            SizedBox(height: 5),
            _buildFooter(),
              SizedBox(height: 5),
            _buildFooter1(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapIndex) {
          setState(() {
            index = tapIndex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner), label: 'Scan QR'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        ],
      ),
    );
  }

  Widget _buildMoneyTransferOption({required IconData icon, required String label}) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, color: Colors.white),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }

  Widget _buildUpiOption(String label, String buttonText) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 140,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 83, 80, 80),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Text(label),
                if (buttonText.isNotEmpty)
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      buttonText,
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      children: [
        _buildActionButton(Icons.wallet, "phonepe", "Wallet"),
        _buildActionButton(Icons.wallet_giftcard, "Explorer", "Rewards"),
        _buildActionButton(Icons.wallet, "Refer&Get", "Rs:50"),
      ],
    );
  }

  Widget _buildActionButton(IconData icon, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(left: 13),
      height: 45,
      width: 130,
      decoration: BoxDecoration(
        color: const Color.fromARGB(97, 122, 121, 121),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(icon),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.purple),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.purple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 160,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(97, 122, 121, 121),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Recharge & Paybills"),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildFooterOption(Icons.battery_charging_full, 'Mobile Recharge'),
                    _buildFooterOption(Icons.attach_money, 'Loan Payment'),
                    _buildFooterOption(Icons.credit_card, 'Credit Card Payment'),
                    _buildFooterOption(Icons.add_home_rounded, 'Rent'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  

  Widget _buildFooterOption(IconData icon, String label) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, color: Colors.purple, size: 40),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ],
    );
  }
}
 Widget _buildFooter1() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 160,
      width: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(97, 122, 121, 121),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Insurance"),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildFooterOption1(Icons.bike_scooter, 'Bike'),
                    _buildFooterOption1(Icons.car_crash_outlined, 'Car'),
                    _buildFooterOption1(Icons.health_and_safety, 'Health'),
                    _buildFooterOption1(Icons.business, 'life'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  

  Widget _buildFooterOption1(IconData icon, String label) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, color: Colors.purple, size: 40),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ],
    );
  }
