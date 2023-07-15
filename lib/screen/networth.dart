import 'package:flutter/material.dart';
import '../model/history.dart';
import '../screen/home.dart';
import '../screen/search.dart';

class netWorth extends StatefulWidget {
  const netWorth({super.key});

  @override
  State<netWorth> createState() => _netWorthState();
}

class _netWorthState extends State<netWorth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101010),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF101010),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 25,
              left: 25,
              bottom: 30,
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Net Worth",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 17,
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
                            "Total Expenses",
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
                            'Rp 8,597k',
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
                  height: 13,
                ),
                Text(
                  "History",
                  style: TextStyle(
                    fontFamily: 'Poppins-medium',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: historyList_List.length,
                    itemBuilder: (context, index) {
                      if (index >= historyList_List.length) {
                        return Container();
                      }
                      final historyList list = historyList_List[index];
                      return _buildHistory(iniHistory: list);
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
                    color: Color(0xff202020))),
          ),
        ],
      ),
    );
  }
}

class _buildHistory extends StatelessWidget {
  final historyList iniHistory;
  const _buildHistory({Key? key, required this.iniHistory}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(
        left: 25,
        top: 4,
        right: 4,
        bottom: 4,
      ),
      width: double.infinity,
      height: 92,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 19,
              ),
              Text(
                iniHistory.namaBarang,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Rp " + iniHistory.harga,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins-medium',
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              iniHistory.image,
              width: 70,
              height: 85,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff403f3f),
      ),
    );
  }
}
