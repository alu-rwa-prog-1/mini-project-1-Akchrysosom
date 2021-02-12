import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // colour effect
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My Store'),
    );
  }
}

class ShirtImageAsset extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/shirt.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image,);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List data = ['Store', 'Products', 'Buy', 'Sell'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
          children: <Widget>[

      GridView.count(
      scrollDirection: Axis.vertical,
          shrinkWrap: true,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          children: <Widget>[
      Padding(
      padding: EdgeInsets.all(8.0),
      child: Image.network('https://static.highsnobiety.com/thumbor/ISICqvxvCNPvsy4f02VA9Clgf-4=/1600x1067/static.highsnobiety.com/wp-content/uploads/2019/09/04164648/custom-sneakers-good-bad-ugly-main.jpg'),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.network('https://www.chatelaine.com/wp-content/uploads/2020/05/how-to-clean-white-sneakers-social-crop.jpg'),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.network('https://cdn.webshopapp.com/shops/212063/files/215250743/6ku-fixie-single-speed-bike-barcelona.jpg')
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.network('https://images.financialexpress.com/2019/11/Ultraviolette-f77-electric-bike-1200x800.jpg?w=1200&h=800&imflag=true')
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(child: Text('Things'),
    color: Colors.blue[500],
    padding: EdgeInsets.all(5),),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(child: Text('Things'),
    color: Colors.red[500],
    padding: EdgeInsets.all(5),),
    ),
    ],
    ),

    SizedBox(height: 10,),
    Text('Gridview Builder By Ephraim'),

    GridView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 5.0),
    itemCount: data.length,
    itemBuilder: (context, index) {
    return Card(
    color: Colors.pink,
    child: GridTile(
    child: Text(data[index]),
    ),
    );
    },

    ),
    ],
    ),
    );
    }
}

