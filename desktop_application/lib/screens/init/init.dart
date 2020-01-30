
import 'package:example_flutter/style.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class InitialScreen extends StatefulWidget {
  final _InitialScreenState state = _InitialScreenState();

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  // Carousel Card informations
  int _current = 0;

  List<String> _examDescription = [
    '   Lorem ipsum dolor sit amet, lobortis deseruisse scriptorem qui ut, ad pri modus eruditi disputationi, vituperata argumentum at pro.Lorem ipsum dolor sit amet, lobortis deseruisse scriptorem qui ut, ad pri modus eruditi disputationi, vituperata argumentum at pro.Lorem ipsum dolor sit amet, lobortis deseruisse scriptorem qui ut, ad pri modus eruditi disputationi, vituperata argumentum at pro. Te eos decore denique disputationi, eu vel tritani referrentur. Eu elit posse est. Ex sed illum tollit. Quaerendum accommodare nam in, dolor sanctus commune usu no, ad vix melius conceptam.',
    '   Este exame mede o nivel de 222 shai hasckas \n asp[dof as s kc]as]sc[a lskfp[a skfcaslc[] a ]',
  ];

  List<String> _examName = [
    'Cateterismo',
    'Testings', 
  ];

  List<String> _imgPaths = [
    'assets/images/Lungs2.jpg',
    'assets/images/Lungs.png',
  ];

  List<String> _subjectInfo = [
    'Curso de Pneumologia \n Pr. Dr. Rudolf Oliveira \n',
    'Curso de Pneumologia \n Pr. Dr. Rudolf Oliveira \n'
  ];

  List<int> _indexes = [
    0,1
  ];

  // Navigation Bar variables
  int _selectedIndex = 0;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HSP Gatherer',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.title
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CarouselSlider(
            initialPage: 0,
            viewportFraction: 0.6,
            aspectRatio: 10/10,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            onPageChanged: (index){
              setState(() {
                _current = index;
              });
            },
            items: _indexes.map((index) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      elevation: 5,
                      semanticContainer: false,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0), 
                                    topRight: Radius.circular(15.0),
                                    bottomRight: Radius.circular(45.0)
                                  ),
                                  child: Image.asset(
                                    _imgPaths[index],
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 15.0
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      _examName[index],
                                      style: Theme.of(context).textTheme.title,
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.info,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {},
                                    ),
                                    Expanded(
                                      child: Container(),
                                    )
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment(0.8, 0.5),
                                heightFactor: 0.5,
                                child: Stack(
                                  overflow: Overflow.visible,
                                  fit: StackFit.passthrough,
                                  children: <Widget>[
                                    FloatingActionButton(
                                      onPressed: () => _onExamEntryTap(context, index),
                                      child: Icon(Icons.send),
                                      backgroundColor: Colors.lightBlueAccent,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 30.0
                              ),
                              child: SingleChildScrollView(
                                child: Text(
                                  _examDescription[index],
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                  style: Theme.of(context).textTheme.body1,
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.lightBlue,
                            indent: 40,
                            endIndent: 40,
                            thickness: 2.0,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 30.0
                            ),
                            child: Text(
                              _subjectInfo[index],
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.body2,
                            ),
                          )
                        ],
                      )
                    )
                  );
                },
              );
            }).toList()
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.library_books
              ),
              onPressed: (){},
            ),
            Container(
              height: 20,
            ),
            IconButton(
              icon: Icon(
                Icons.info_outline,
              ),
              onPressed: (){},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.file_download
        ),
        onPressed: (){},
      ),
      floatingActionButtonLocation: 
        FloatingActionButtonLocation.centerDocked,
    );
  }

  _onExamEntryTap(BuildContext context, int examIndex) {

    String routeName = '';
    switch (examIndex) {
      case 0:
          routeName = '';
        break;
      default:
    }

    if (routeName != '') {
      Navigator.pushNamed(context, routeName);
    }

  }

  _onBarEntryTap(BuildContext context, int iconIndex) {


  }

}