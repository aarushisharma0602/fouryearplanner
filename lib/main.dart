import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Beyond the Classroom',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text('Beyond the Classroom'),
          ),
          body: const Center(
            child: picCards(),
          ),
        ));
  }
}

class picCards extends StatefulWidget {
  const picCards({Key? key}) : super(key: key);
  @override
  _picCardsState createState() => _picCardsState();
}

class _picCardsState extends State<picCards> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  '/Users/aarushisharma/Downloads/600x400-Summer-Research-2019.jpeg',
                  height: 100,
                  width: 100,
                ),
                ListTile(
                  leading: Icon(Icons.biotech_rounded),
                  title: const Text('Summer Research'),
                  subtitle: Text(
                    'Mount Holyoke College provides many funded internships and ' +
                        'research opportunities reserved for MHC students. These ' +
                        'selective, high-quality MHConnect positions are ' +
                        'pre-arranged by various MHC Centers and Departments.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Deadline',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        _launchURL(
                            'https://www.mtholyoke.edu/academicdeans/internships-summer-research');
                      },
                      child: const Text('Visit the Page'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  '/Users/aarushisharma/Downloads/600x400-Summer-Research-2019.jpeg',
                  height: 100,
                  width: 100,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Lynk UAF'),
                  subtitle: Text(
                    'Mount Holyoke College provides funding of 3,000 USD for domestic ' +
                        'internships and 3,600 USD for international internships to every ' +
                        'eligible* student who has secured a qualified summer internship ' +
                        'or research position and completed all components of the Lynk UAF application by the deadline',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Deadline',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        _launchURL('https://www.mtholyoke.edu/lynk');
                      },
                      child: const Text('About Lynk'),
                    ),
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        _launchURL(
                            'https://www.mtholyoke.edu/cdc/universal-application-funding');
                      },
                      child: const Text('Further Details'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  '/Users/aarushisharma/Downloads/600x400-Summer-Research-2019.jpeg',
                  height: 100,
                  width: 100,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Honors Thesis'),
                  subtitle: Text(
                    'Honors thesis gives an nice introduction to research methods ' +
                        'at the undergraduate level',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '<Deadline>',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        _launchURL(
                            'https://www.mtholyoke.edu/academicdeans/honors-work');
                      },
                      child: const Text('More about eligibility'),
                    ),
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        _launchURL(
                            'https://lits.mtholyoke.edu/research/theses-and-honors-work');
                      },
                      child: const Text('LITS help on thesis'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  '/Users/aarushisharma/Downloads/600x400-Summer-Research-2019.jpeg',
                  height: 100,
                  width: 100,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Graduate School'),
                  subtitle: Text(
                    'Are you thinking about attending graduate school after ' +
                        'completing your studies at Mount Holyoke College? ' +
                        'Graduate school—whether it is a one year master’s degree or ' +
                        'a six-year PhD program—represents a considerable investment ' +
                        'of time and often money.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '<Deadline>',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        _launchURL('https://www.mtholyoke.edu/cdc/graduate');
                      },
                      child: const Text('Grad School Advising'),
                    ),
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        _launchURL(
                            'https://www.mtholyoke.edu/sfs/graduate-programs');
                      },
                      child: const Text('Graduate Programs'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _launchURL(url) async {
    //const url =
    //    'https://www.mtholyoke.edu/academicdeans/internships-summer-research';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
