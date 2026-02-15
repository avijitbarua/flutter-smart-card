import 'package:flutter/material.dart';
import 'main.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  bool showSocialMediaFields = false;

  void toggleSocialMediaFields() {
    setState(() {
      showSocialMediaFields = !showSocialMediaFields;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.indigo[500],
        ),
        body: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Student Details",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 350.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Name', icon: Icon(Icons.person)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'College/ University',
                          icon: Icon(Icons.school_outlined)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Phone Number', icon: Icon(Icons.phone)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.male),
                        labelText: 'Gender',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Date of Birth',
                          icon: Icon(Icons.date_range)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[200],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: TextButton(
                            onPressed: toggleSocialMediaFields,
                            child: const Text(
                              "Social Media ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (showSocialMediaFields)
                      Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'LinkedIn ID',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Facebook ID',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Twitter ID',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'YouTube ID',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Instagram ID',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'TikTok ID',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'GitHub ID',
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyHomePage(
                                                title: 'Hello Avijit',
                                              )), // Navigate to ScreenB
                                    );
                                  },
                                  child: const Text("Preview")),
                              const SizedBox(
                                width: 140,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ScreenB()), // Navigate to ScreenB
                                    );
                                  },
                                  child: const Text("Buy Now"))
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Congratulations, you are buying!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
