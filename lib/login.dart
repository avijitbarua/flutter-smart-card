import 'package:flutter/material.dart';
import 'package:smartcard/Business.dart';
import 'package:smartcard/Personal.dart';
import 'package:smartcard/Professional.dart';

import 'Student.dart';

class HomeInformation extends StatelessWidget {
  const HomeInformation({super.key});

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              10.0), // Replace with your desired border radius
                        ),
                        child: const Text(
                          "Here is Our all of package. Please vist and understand about all of feature and preview your own card",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        )),
                  ),

                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: buildUniversityContainer(
                          context: context,
                          imageUrl:
                              'https://img.freepik.com/free-photo/happy-young-female-student-holding-notebooks-from-courses-smiling-camera-standing-spring-clothes-against-blue-background_1258-70161.jpg',
                          universityName: 'Student',
                          price: '569',
                          buttonColor: Colors.blue,
                          navigateTo: const Student(),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                          child: buildUniversityContainer(
                              context: context,
                              imageUrl:
                                  'https://media.istockphoto.com/id/627676934/photo/confidence-and-style.jpg?s=612x612&w=0&k=20&c=lMuaeMOM0Jw-vCLEMmE9aBoujnINNB5ajmUEXtq8XIw=',
                              universityName: 'Personal',
                              buttonColor: Colors.blue,
                              price: '689',
                              navigateTo: const Personal())),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: buildUniversityContainer(
                            context: context,
                            imageUrl:
                                'https://st.depositphotos.com/1011643/2348/i/450/depositphotos_23483051-stock-photo-modern-businesswoman-holding-tablet-computer.jpg',
                            universityName: 'Professional',
                            buttonColor: Colors.blue,
                            price: '789',
                            navigateTo: const Professional()),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                          child: buildUniversityContainer(
                              context: context,
                              imageUrl:
                                  'https://online.hbs.edu/Style%20Library/api/resize.aspx?imgpath=/PublishingImages/overhead-view-of-business-strategy-meeting.jpg&w=1200&h=630',
                              universityName: 'Business',
                              buttonColor: Colors.blue,
                              price: '889',
                              navigateTo: const Business())),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                ],
              ),
            ),
          ),
        ));
  }

  Widget buildUniversityContainer({
    required BuildContext context,
    required String imageUrl,
    required String universityName,
    required Color buttonColor,
    required price,
    required Widget navigateTo,
  }) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        10.0), // Replace with your desired border radius
                  ),
                  child: Image.network(
                    imageUrl,
                  ),
                ),
                Text(
                  universityName,
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  '$price৳',
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 0.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => navigateTo),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      buttonColor,
                    ),
                  ),
                  child: const Text(
                    'Check',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
