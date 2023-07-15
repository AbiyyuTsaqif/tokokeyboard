import 'package:flutter/material.dart';
import '../model/payment.dart';
import '../screen/networth.dart';
import '../screen/search.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101010),
      appBar: _createAppBar(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 25, left: 25, bottom: 30, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wallet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 184,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Visa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 56,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "7981",
                            style: TextStyle(
                              fontFamily: 'Poppins-medium',
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "1243",
                            style: TextStyle(
                              fontFamily: 'Poppins-medium',
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "6098",
                            style: TextStyle(
                              fontFamily: 'Poppins-medium',
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "3720",
                            style: TextStyle(
                              fontFamily: 'Poppins-medium',
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hoshino Ruby",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins-medium',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 98,
                            height: 36,
                            child: Text(
                              "Card details",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins-medium',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0x381d282b),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ImageIcon(
                            AssetImage('assets/icon/1.png'),
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Your Balance",
                            style: TextStyle(
                              fontFamily: 'Poppins-medium',
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Rp 10,899k',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 141,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff3f3e3e),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Text(
                  "Linked Accounts",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: accountList_List.length,
                    itemBuilder: (context, index) {
                      if (index >= accountList_List.length) {
                        return Container();
                      }
                      final accountList list = accountList_List[index];
                      return _buildLinkedAccount(iniAccount: list);
                    },
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(right: 50, left: 50, bottom: 15),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: 285,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset('assets/icon/1.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/icon/2.png'),
                    iconSize: 40,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => searchScreen(),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/icon/3.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => netWorth(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff202020),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _createAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF101010),
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _buildLinkedAccount extends StatelessWidget {
  final accountList iniAccount;
  const _buildLinkedAccount({Key? key, required this.iniAccount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(6),
      width: 336,
      height: 92,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: 90,
            height: 80,
            child: Image.asset(
              iniAccount.image,
              height: 40,
              width: 40,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff222222),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                iniAccount.namaAccount,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                iniAccount.desc,
                style: TextStyle(
                  fontFamily: 'Poppins-medium',
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff403f3f),
      ),
    );
  }
}
