import 'package:flutter/material.dart';

//<> bul Generics--->belgiluu tip
const String TajTex =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
final List<User> users = [
  User(
    aty: 'Gulzada Amankul kyzy',
    kesibi: 'Byhgalter',
    profilSurot: 'https://picsum.photos/seed/picsum/200/300',
    TajryibaJolu: TajTex,
    jashi: 33,
  ),
  User(
    aty: 'Nursultan Uson uulu',
    kesibi: 'Flutter Devoloper',
    profilSurot:
        'https://fastly.picsum.photos/id/11/2500/1667.jpg?hmac=xxjFJtAPgshYkysU_aqx2sZir-kIOjNR9vx0te7GycQ',
    TajryibaJolu: TajTex,
    jashi: 33,
  ),
  User(
    aty: 'Mirsali Manasov',
    kesibi: 'Ingener',
    profilSurot:
        'https://fastly.picsum.photos/id/25/5000/3333.jpg?hmac=yCz9LeSs-i72Ru0YvvpsoECnCTxZjzGde805gWrAHkM',
    TajryibaJolu: TajTex,
    jashi: 32,
  ),
  User(
    aty: 'Emirlan Abdyldaev',
    kesibi: 'Student',
    profilSurot:
        'https://fastly.picsum.photos/id/15/2500/1667.jpg?hmac=Lv03D1Y3AsZ9L2tMMC1KQZekBVaQSDc1waqJ54IHvo4',
    TajryibaJolu: TajTex,
    jashi: 14,
  ),
  User(
    aty: 'Nazik Suymenova',
    kesibi: 'IT devoloper',
    profilSurot:
        'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU',
    TajryibaJolu: TajTex,
    jashi: 36,
  ),
];

class User {
  final String aty;
  final String kesibi;
  final String profilSurot;
  final String TajryibaJolu;

  final int jashi;

  User(
      {required this.aty,
      required this.kesibi,
      required this.profilSurot,
      required this.TajryibaJolu,
      required this.jashi});
}

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 181, 124),
        title: const Text(
          'data',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return ListTile(
              title: Text(user.aty),
              subtitle: Text(user.kesibi + user.jashi.toString() + 'jashta'),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(user.profilSurot),
              ),
              //Image.network('https://picsum.photos/seed/picsum/200/300'),
              trailing: Icon(Icons.chevron_right),
            );
          }),
    );
  }
}
