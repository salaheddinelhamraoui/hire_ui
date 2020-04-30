import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Directionality(
          textDirection: TextDirection.rtl,
          child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.arrowRight),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.list),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.40),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'أحصل على تدريب',
                  style: TextStyle(fontFamily: 'Janna', fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 28.0, 25.0),
                          child: Text(
                            'نقاطك',
                            style: TextStyle(
                                fontFamily: 'Janna',
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 25.0),
                          child: Text(
                            '200',
                            style: TextStyle(
                                fontFamily: 'Janna',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'إشتري المزيد',
                          style: TextStyle(
                              fontFamily: 'Janna',
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'المدربين',
                  style: TextStyle(
                      fontFamily: 'Janna',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
                Text(
                  'أظهر الجلسات السابقة',
                  style: TextStyle(
                      fontFamily: 'Janna',
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GridView.count(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            crossAxisCount: 2, // Number of Cards in each Row
            primary: false,
            crossAxisSpacing: 4.0, // Space between Cards
            mainAxisSpacing: 4.0, // Space between Rows

            children: <Widget>[
              _buildCard('فدوى', 'متوفر', 1,
                  'https://i.pinimg.com/originals/64/ce/92/64ce9246abec3f86b7d5a8d2a562a03c.jpg'),
              _buildCard('فدوى', 'بعيد', 2,
                  'https://good-morning.cc/wp-content/uploads/2019/10/6552.jpg'),
              _buildCard('فدوى', 'متوفر', 3,
                  'https://www.alhlol.com/?qa=blob&qa_blobid=9974064852281091860'),
              _buildCard('فدوى', 'متوفر', 4,
                  'https://7loo.net/wp-content/uploads/2019/06/3345-1.jpg'),
              _buildCard('فدوى', 'متوفر', 5,
                  'https://i.pinimg.com/originals/64/ce/92/64ce9246abec3f86b7d5a8d2a562a03c.jpg'),
              _buildCard('فدوى', 'متوفر', 6,
                  'https://i.pinimg.com/originals/64/ce/92/64ce9246abec3f86b7d5a8d2a562a03c.jpg'),
            ],
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildCard(String name, String status, int cardIndex, String img) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 7.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 12.0,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: NetworkImage(img),
                    ),
                    Container(
//                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 6.0,
                          backgroundColor:
                              status == 'بعيد' ? Colors.orange : Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  status,
                  style: TextStyle(
                      fontFamily: 'Janna',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(7.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: status == 'بعيد' ? Colors.grey : Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: Text(
                'طلب',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Janna',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
          : EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0),
    );
  }
}
