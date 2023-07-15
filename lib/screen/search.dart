import 'package:flutter/material.dart';
import '../model/image1.dart';
import '../model/image2.dart';
import '../screen/home.dart';
import '../screen/networth.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => __searchState();
}

class __searchState extends State<searchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101010),
      appBar: AppBar(
        backgroundColor: Color(0xFF101010),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 30,
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                searchBox(),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.symmetric(vertical: 30),
                    itemCount: imageList1_List.length > imageList2_List.length
                        ? imageList1_List.length
                        : imageList2_List.length,
                    itemBuilder: (context, index) {
                      if (index >= imageList1_List.length ||
                          index >= imageList2_List.length) {
                        return Container();
                      }
                      final imageList1 list1 = imageList1_List[index];
                      final imageList2 list2 = imageList2_List[index];
                      return _keyboardList(
                        iniImageList1: list1,
                        iniImageList2: list2,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(bottom: 15),
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

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xff444040),
      ),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search here',
          hintStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins-medium',
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}

class _keyboardList extends StatelessWidget {
  final imageList1 iniImageList1;
  final imageList2 iniImageList2;
  const _keyboardList(
      {Key? key, required this.iniImageList1, required this.iniImageList2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    iniImageList1.image,
                    width: 170,
                    height: 170,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  iniImageList1.namaBarang,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Rp ' + iniImageList1.Harga,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    iniImageList2.image,
                    width: 170,
                    height: 170,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  iniImageList2.namaBarang,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Rp ' + iniImageList2.Harga,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 9,
        ),
      ],
    );
  }
}
