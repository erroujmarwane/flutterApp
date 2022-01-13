import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_estate/provider/UserProvider.dart';
import 'package:real_estate/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Provider.of<UserProvider>(context, listen: false).initFirebase();
    });
  }


  @override
  Widget build(BuildContext context) {
  final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Text(
                "welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Name",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 10,
              ),
              Text("Email",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 15,
              ),
              ActionChip(label: Text("Log Out"), onPressed: () {
                userProvider.signOut;
                Navigator.push( context,MaterialPageRoute(builder: (context) => LoginScreen()), ); 
              })
            ],
          ),
        ),
      ),
    );
  }
}
