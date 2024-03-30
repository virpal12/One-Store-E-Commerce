import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;
  var Color = Colors.orange;
  bool selected = false;

  final iconList = <IconData>[
    FontAwesomeIcons.list,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.heart,
    FontAwesomeIcons.person
  ];

  // list screens = [
  //   home,
  //   login,
  //   men,
  //   women
  // ];

  List Category = [
    'Mens',
    'Womens',
    'Kids',
    'Footware',
    'Skin\nCare',
    'Home\nDecore',
    'Toys',
    'Electronics',
    'Grocery',
    'Books'
  ];

  List Img = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQaKWiyZpn17lSTQwIR-9o6Li1KIIx3nlSL3VqyIFh0w&s',
    'https://www.ecommerce-mag.com/hubfs/h-ng-nguy-n-256537-unsplash%20%281%29.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/AmazonBrands/GW_CPB_/QC_CC/QC_PC_186x116_7._SY116_CB585040546_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Fashion/Gateway/BAU/BTF-Refresh/May/PF_MF/MF-2-186-116._SY116_CB636110853_.jpg',
    'https://m.media-amazon.com/images/I/71Q7lo9chYL._AC_SR146,118_QL65_.jpg',
    'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZWNvbW1lcmNlJTIwTUVOUyUyMGhvbWUlMjBhbmQlMjBkZWNvcmV8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1599623560574-39d485900c95?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZWNvbW1lcmNlJTIwdG95c3xlbnwwfHwwfHx8MA%3D%3D',
    'https://media.istockphoto.com/id/914148426/photo/bitcoin-metallic-circuit-logo-extreme-close-up.webp?b=1&s=170667a&w=0&k=20&c=D--qKYoG4SHTeJHjhz3AeOKkmmdj4Oh1RlzGvXGEeEM=',
    'https://media.istockphoto.com/id/1128699739/photo/e-commerce-augmented-reality-marketing-in-supermarket-mobile-phone-app-ai-artificial.webp?b=1&s=170667a&w=0&k=20&c=qY9QUErlCUSITWfFoxezGq1AsqyEQDtV3tYWvKwmYQ0=',
    'https://media.istockphoto.com/id/178986048/photo/conceptual-laptop-with-library-on-screen.jpg?s=1024x1024&w=is&k=20&c=-L8tSVn5lKKgUvbwgowj51TRD3G8vtg8u8pV1VFR2lo='
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notifications_none_outlined,
              size: 25,
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.06,
              width: MediaQuery.sizeOf(context).width * 0.95,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        hintStyle: TextStyle(fontSize: 17),
                        fillColor: Colors.blueGrey.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                    endIndent: 13,
                    indent: 10,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 13.0),
                      child: Image.asset(
                        'Assets/Image/settings-sliders.png',
                        fit: BoxFit.cover,
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ))
                ],
              ),
            ),

            ///n.push(c,mater(c)=> scren[index])
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.22,
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 1 / 4.3,
                        width: MediaQuery.sizeOf(context).width * 1 / 1.2,
                        child: Image(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1460353581641-37baddab0fa2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNob2VzfGVufDB8fDB8fHww'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 28,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 1 / 7,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: Category.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),

                            border: Border.all(color: Colors.black,width: 1),
                            image: DecorationImage(image: NetworkImage(Img[index]),
                            fit: BoxFit.cover
                            )

                          ),
                        ),
                      ),
                      SizedBox(height:5 ,),
                      Text(
                        Category[index],
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special For You',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GridView.builder(
                itemCount: Img.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                    childAspectRatio: 3 / 4,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.blueGrey.shade100,
                    child: Container(
                      // height: MediaQuery.sizeOf(context).height * 0.5,
                      // width: MediaQuery.sizeOf(context).height * 0.2,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 144.0, top: 3),
                            child: Container(
                              color: Colors.white,
                                height: 19,
                                width: 20,
                                child: InkWell(
                                  child: selected
                                      ? Image(
                                          image: AssetImage(
                                              'Assets/Image/heart.png'),
                                          color: Colors.red,
                                        )
                                      : Image(
                                          image: AssetImage(
                                              'Assets/Image/heart (1).png')),
                                  onTap: () {
                                    setState(() {
                                      selected = !selected;
                                    });
                                  },
                                ),
                                alignment: Alignment.topRight),
                          ),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUnMGyf9e4S3QjZ6kCdneLYD18kT3aLC-7TQ&usqp=CAU'),
                                fit: BoxFit.contain,
                                height: 150,
                                width: MediaQuery.sizeOf(context).width * 0.8,
                              ),
                            ),
                          ),

                          Text(
                            'Wireless Headhphones',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$120.00',
                                style: TextStyle(
                                    fontSize: 17,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  minRadius: 10),
                              SizedBox(
                                width: 1,
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  minRadius: 10),
                              SizedBox(
                                width: 1,
                              ),
                              CircleAvatar(
                                  backgroundColor: Colors.black,
                                  minRadius: 10),
                              SizedBox(
                                width: 1,
                              ),
                              CircleAvatar(
                                  child: Text(
                                    '+2',
                                  ),
                                  minRadius: 10),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color,
          child: Icon(FontAwesomeIcons.house),
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          //params
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        activeColor: Color,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 30,
        rightCornerRadius: 30,
        onTap: (index) => setState(
          () => _bottomNavIndex = index,
        ),
      ),
    );
  }
}
