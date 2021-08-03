import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/Screens/introScreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget
{
  static String id="HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey=GlobalKey();
  List items = [ 'Beans', 'Coffee Maker','Cups','V60'];
  //photo list of swiper
  List imgList = [
    'images/22.png',
    'images/11.png',
    'images/33.png',
    'images/44.png',
  ];
  //photo list cricul avtar
  List logList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNRjI6MeTSy4o7UUvvAj4dKjFPYHvrNpxEtg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgporkoJpYLY75DFjc63tH6g6EZd4b2VDqXg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKN-q_xmK5iM4qLm14oJCv2fpq6T0Pdgd5VQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtJdbBFEgPenbcXuwP6aDYDl9EKwgj4OE2XA&usqp=CAU',
  ];
  //coffee brand list
  List brandList = [
    'https://logodix.com/logo/1916203.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdNzvicTXlbmavXoYTnynCNM5qRDlQAWCFpA&usqp=CAU',
    'https://www.kindpng.com/picc/m/399-3990828_nespresso-logo-png-transparent-png.png',
    'https://www.almrsal.com/wp-content/uploads/2015/11/Costa.jpg',
  ];

  List arrList = [
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
          });
        },
        selectedItemColor: Colors.red[1500],
        unselectedItemColor: Colors.brown,
        items: [
          BottomNavigationBarItem(icon:
          InkWell(
              onTap: ()
              {
                Navigator.pushNamed(context, introScreen.id);
              },
              child: Icon(Icons.coffee)),label: 'Wish List'),
          //home
          BottomNavigationBarItem(icon:
          InkWell(
              onTap: ()
              {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: Icon(Icons.home)),label: 'Home '),
          //cart
          BottomNavigationBarItem(icon:
          InkWell(
              onTap: ()
              {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: Icon(Icons.shopping_cart)),label: 'cart '),
        ],
      ),

      key: scaffoldKey,
      drawer: Drawer(),
      backgroundColor: Colors.brown[50],
     body: ListView(
       children: [
       Padding(
         padding: const EdgeInsets.all(8.0),

         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             InkWell(
               onTap:() {
                 //scaffoldKey.currentState.openDrawer();
                 },

                 child:
              Icon(Icons.filter_list_sharp,color: Colors.brown[800],)),
             Icon(Icons.shopping_basket_outlined,color: Colors.brown[800],),
           ],
         ),
       ),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 border: Border.all(color: Colors.brown),
                 color: Colors.brown[250],
               ),
               child: TextFormField(
                 decoration: InputDecoration(
                     prefixIcon: Icon(Icons.coffee,color: Colors.brown[800],),
                     hintText: 'Explore your favorite coffee',fillColor: Colors.brown[10],
                     floatingLabelBehavior: FloatingLabelBehavior.never,
                     border: InputBorder.none),
               )),
         ),

         Padding(
           padding: const EdgeInsets.all(1.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.stars_rounded,color: Colors.brown[800],),
               Text('Enjoy 10% With First Order '),
                Icon(Icons.stars_rounded,color: Colors.brown[800],),
             ],
           ),
         ),
//swiper
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: MediaQuery.of(context).size.height*0.20,
             width: MediaQuery.of(context).size.width*0.20,
             child: Swiper(
                 autoplay: true,
                 pagination: SwiperPagination(),
                 itemCount: imgList.length,itemBuilder: (context,index){
               return Container (
                   decoration: BoxDecoration(
                     image: DecorationImage(
                         fit:BoxFit.cover,
                image: AssetImage(imgList[index]),
                     ),
                   ));
             }),
           ),
         ),

         //categories
         Container(
           height: MediaQuery.of(context).size.height*0.17,
           width: MediaQuery.of(context).size.width*0.18,
           child: ListView.builder
             (
             itemCount: items.length,
             scrollDirection: Axis.horizontal,
             itemBuilder: (context,index)
             {
               return Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: CircleAvatar(
                       radius: 38,
                       backgroundColor: Colors.brown,
                         backgroundImage: NetworkImage(
               logList[index],

               )
                     ),
                   ),
                   Text(items[index])
                 ],
               );
             },),
         ),
         //just arrived text
         Padding(
           padding: const EdgeInsets.all(1.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('  Just Arrived '),
               Text('                                                       See All '),
               Icon(Icons.arrow_right_sharp,color: Colors.brown[800],),

             ],
           ),
         ),
         //just arrived items slider
         Padding(
           padding: const EdgeInsets.all(4.0),
           child: Container(
             height: MediaQuery.of(context).size.height*0.25,
             width: MediaQuery.of(context).size.width*0.40,
             child: ListView.builder(
                 itemCount: items.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context,index){
                   return
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         color: Colors.brown[600],
                         height: 400,
                         width: 200,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               fit:BoxFit.cover,
                               image: NetworkImage(arrList[index]),
                             ),
                           )
                       ),
                     );
                 }),
           ),
         ),

         Padding(
           padding: const EdgeInsets.all(1.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Explore Your Favorite Brand Proudcut '),
               Icon(Icons.arrow_right_sharp,color: Colors.brown[800],),

             ],
           ),
         ),
         //brand
         Container(
           height: MediaQuery.of(context).size.height*0.17,
           width: MediaQuery.of(context).size.width*0.18,
           child: ListView.builder
             (
             itemCount: items.length,
             scrollDirection: Axis.horizontal,
             itemBuilder: (context,index)
             {
               return Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: CircleAvatar(
                         radius: 38,
                         backgroundColor: Colors.brown,
                         backgroundImage: NetworkImage(
                           brandList[index],
                         )
                     ),
                   ),

                 ],
               );
             },),
         ),
       ],
     ),
    );
  }
}