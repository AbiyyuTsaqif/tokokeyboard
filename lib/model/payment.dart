class accountList {
  int id;
  String namaAccount;
  String desc;
  String image;

  accountList({
    required this.id,
    required this.namaAccount,
    required this.desc,
    required this.image,
  });
}

var accountList_List = [
  accountList(
    id: 1,
    namaAccount: 'Paypal',
    desc: 'XXXX - XXXX - XXXX - 2432',
    image: 'assets/icon/4.png',
  ),
  accountList(
    id: 2,
    namaAccount: 'Link Aja',
    desc: 'XXXX - XXXX - XXXX - 6348',
    image: 'assets/icon/5.png',
  ),
  accountList(
    id: 3,
    namaAccount: 'Dana',
    desc: 'XXXX - XXXX - XXXX - 1532',
    image: 'assets/icon/6.png',
  ),
  accountList(
    id: 4,
    namaAccount: 'Gopay',
    desc: 'XXXX - XXXX - XXXX - 3452',
    image: 'assets/icon/7.png',
  ),
  accountList(
    id: 5,
    namaAccount: 'Amazon Pay',
    desc: 'XXXX - XXXX - XXXX - 6542',
    image: 'assets/icon/8.png',
  ),
];
