import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category {
  final String title;
  final String note;
  Category({required this.title, required this.note});
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    final int currentHour = now.hour.toInt();
    var welcomMess = () {
      if (currentHour < 12) {
        return "GoodMorning!";
      }
      if (currentHour > 12 && currentHour < 18) {
        return "GoodAfternoon!";
      }
      return "G9";
    };
    List<Category> categoryMap = [
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé.."),
      Category(
          title: 'Working',
          note:
              "Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé..")
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/111.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 35,
            ),
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello....(name user!s)',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 10),
            Text(
              welcomMess(),
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 10),
            const Text(
              "...Perfection Lies in Detail: How to Divide Tasks Specifically and Detail-Oriented for Maximum Efficiency...",
              style: TextStyle(fontSize: 13),
            ),
            SizedBox(height: 80),
            Container(
              child: Text(
                'Category:',
                style: TextStyle(),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: categoryMap.length,
                itemBuilder: (context, index) {
                  final category = categoryMap[index];
                  // return Text(category.title);
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      splashColor: Colors.yellow[300],
                      onTap: () {},
                      child: Ink(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/bgstudentt.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(category.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              category.note,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            // Center(
            //   child: Wrap(
            //     spacing: 10,
            //     runSpacing: 10,
            //     children: [
            //       InkWell(
            //         // style: ButtonStyle(
            //         //   padding: MaterialStateProperty.all(EdgeInsets.all(0)),
            //         //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //         //     RoundedRectangleBorder(
            //         //       borderRadius: BorderRadius.circular(10),
            //         //     ),
            //         //   ),
            //         // ),
            //         splashColor: Colors.yellow[300],
            //         onTap: () {},
            //         child: Ink(
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //               image: AssetImage('assets/bgstudentt.png'),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //           child: Column(
            //             children: [
            //               Text('Working',
            //                   style: TextStyle(
            //                     fontSize: 18,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.red,
            //                   )),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Text(
            //                 'Hãy cố gắng làm việc thật tốt và hoàn thành các task bạn nhé...',
            //                 style: TextStyle(
            //                     color: Color.fromARGB(255, 255, 255, 255)),
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
