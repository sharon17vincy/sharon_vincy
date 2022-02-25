import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sharon_vincy/Constants.dart';
import 'package:sharon_vincy/Widgets/CardWidget.dart';
import 'package:sharon_vincy/Widgets/ItemWidget.dart';


class HomePage extends StatefulWidget {
  late final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 60, left: 0, right: 0),
        child : Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               const Image(
                   image: AssetImage(
                     'assets/images/U-Sell-Up.png',
                   ), height: 60,width: 100,),
               Container(
                 width: MediaQuery.of(context).size.width/1.5,
                 height: 50,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.white
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const Padding(padding: EdgeInsets.only(left: 8),
                     child: Text("Search", style: TextStyle(fontSize: 18, color: Colors.grey),),),
                     Padding(padding: const EdgeInsets.only(right: 8),
                     child: Row(
                       children: const [
                         Image(
                           image: AssetImage(
                             'assets/images/headset.jpg',
                           ), height: 25,width: 40,),
                         Image(
                           image: AssetImage(
                             'assets/images/24x7.png',
                           ), height: 30,width: 40,),
                         Image(
                           image: AssetImage(
                             'assets/images/barcode.png',
                           ), height: 25,width: 35,),
                       ],
                     ),)
                   ],
                 ),
               )
             ],
            ),
            const SizedBox(height: 8,),
            Container(
              color: Colors.grey.withOpacity(0.2),
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding:
                    const EdgeInsets.only(top: 8, right: 16),
                    itemCount: titles.length,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (_, idx) {
                      return Padding(padding: const EdgeInsets.only(top: 8, left: 16),
                      child: Text(titles[idx], style: const TextStyle(fontSize : 16, color: Colors.grey),) ,);
                    })),
            TitleCard(300, 600, 'assets/images/fas.jpg', 50, () => {}),
            Container(
            padding: const EdgeInsets.all(8),
              color: Colors.grey.withOpacity(.2),
              child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best Practice Definition & Meaning',
                  style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("SHOP", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold ),
                    ),
                  ),
                )
              ],
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height/4.5,
              child:   ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 8, right: 16),
                  itemCount: titles.length,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (_, idx) {
                    return mainCategory(idx) ;
                  }),
            ),
            Container(
              width: double.infinity,
                padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                color: Colors.grey.withOpacity(.2),
                child :
                    const Text(
                      '# Best Title',
                      style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.2),
                  crossAxisCount: 3),
              itemBuilder: (_, index) => Padding(
                padding: const EdgeInsets.all(2),
                  child:
                      Container(
                        color: Colors.white,
                        height: 800,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ItemCard(300, 600, 'assets/images/shopping.jpg', 50, () => {} , index),
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                    const Text(
                                      '00.00 /-',
                                      style: TextStyle(fontSize: 14, color: Colors.black, decoration: TextDecoration.lineThrough, fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(width: 4,),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrangeAccent,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Text("00%",
                                          style: TextStyle(fontSize: 14, color: Colors.white, ),
                                        ),
                                      ),
                                    )
                                  ],
                            ),
                            SizedBox(height: 4,),
                            const Text(
                              '00.00 /-',
                              style: TextStyle(fontSize: 16, color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 4,),
                            const Text(
                              'Product Service',
                              style: TextStyle(fontSize: 16, color: Colors.black,
                                  ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 4,),
                            const Text(
                              'Title Product',
                              style: TextStyle(fontSize: 16, color: Colors.black,
                                 ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),


                          ],
                        ),

                      ),
              ),
              itemCount: 9,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
              color: Colors.grey.withOpacity(.2),
              child :
              const Text(
                '# Top Title',
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
                color: Colors.white,
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding:
                    const EdgeInsets.only(top: 8, right: 16),
                    itemCount: titles.length,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (_, idx) {
                      return Padding(padding: const EdgeInsets.only(top: 8, left: 16),
                        child: topCategory(idx));
                    })),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                  color: Colors.grey.withOpacity(.2),
                  child : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                  Text(
                    '# SHOP BY CATEGORY',
                    style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Text(
                      'View All',
                      style: TextStyle(fontSize: 18, color: Colors.black,),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )

                    ],
                  ),
                ),
            SizedBox(
              height: 150,
              child:   ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 0, right: 16),
                  itemCount: titles.length,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (_, idx) {
                    return subCategory(idx) ;
                  }),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.2),
                  crossAxisCount: 3),
              itemBuilder: (_, index) => Padding(
                padding: const EdgeInsets.all(2),
                child:
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemCard(300, 600, 'assets/images/shopping.jpg', 0,  () => {}, index,),
                      SizedBox(height: 4,),
                      SizedBox(height: 4,),
                      const Text(
                        '00.00 /-',
                        style: TextStyle(fontSize: 16, color: Colors.grey,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4,),
                      const Text(
                        'Product Service',
                        style: TextStyle(fontSize: 16, color: Colors.black,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4,),
                      const Text(
                        'Title Product',
                        style: TextStyle(fontSize: 16, color: Colors.black,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4,),
                      const Text(
                        'Service Title ',
                        style: TextStyle(fontSize: 16, color: Colors.black,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                ),
              ),
              itemCount: 3,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'TERM OF USE',
                          style: TextStyle(fontSize: 16, color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'CONTACT',
                          style: TextStyle(fontSize: 16, color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ), Text(
                          'CAREER',
                          style: TextStyle(fontSize: 16, color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ), Text(
                          'AREA RANGE',
                          style: TextStyle(fontSize: 16, color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )

                  ),
                  SizedBox(
                      height: 80,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Image(
                                image: AssetImage(
                                  'assets/images/U-Sell-Up.png',
                                ),
                                width: 100.0),
                            Text(
                              'PROJECT BY',
                              style: TextStyle(fontSize: 16, color: Colors.grey,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ), Text(
                              'EZENESS TECHNOLOGY',
                              style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      )

                  )

                ],
              ),
            ),
            const SizedBox(
              height: 70,
            )

          ],
        ),)
      ),        // body : CustomScrollView(
    );
  }

  Widget mainCategory(int idx){
    return Padding(padding:const EdgeInsets.only(right: 4),
    child:  Container(
        padding:const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center( child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.black,

              shape: BoxShape.circle,),
            child: const Image(image : AssetImage(
              'assets/images/stack2.png',
            ),
              color: Colors.white,
          ),
          ),
          const SizedBox(height: 4,),
          Text("Main" + "\n" + "Category" + (idx+1).toString(), maxLines: 2, textAlign: TextAlign.center,
          softWrap: true, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
        ],
      ),)
    ));
  }

  Widget subCategory(int idx){
    return Padding(padding:const EdgeInsets.only(right: 4),
        child:  Container(
            padding:const EdgeInsets.only(left: 8, right: 8,),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center( child: Row(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    color: Colors.blue,

                    shape: BoxShape.circle,),
                  child: const Image(image : AssetImage(
                    'assets/images/stack2.png',
                  ),
                    color: Colors.white,

                  ),
                ),
                const SizedBox(width: 4,),
                Text("Sub Category" + (idx+1).toString(), maxLines: 2, textAlign: TextAlign.center,
                  softWrap: true, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
              ],
            ),)
        ));
  }


  Widget topCategory(int idx){
    return Padding(padding:const EdgeInsets.only(right: 4),
        child:  Container(
            padding:const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center( child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration:  BoxDecoration(
                    border: Border.all(width: 3, color: Colors.pinkAccent.shade100),
                    shape: BoxShape.circle,),
                  child: const Image(image : AssetImage(
                    'assets/images/chef.png',
                  ),
                    fit: BoxFit.contain,
                  ),
                  ),
                const SizedBox(height: 6,),
                Text("@_user" + (idx+1).toString(), maxLines: 2, textAlign: TextAlign.center,
                  softWrap: true, style: const TextStyle(
                      color : Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),)
              ],
            ),)
        ));
  }

}
