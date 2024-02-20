import 'package:flutter/material.dart';
import 'package:sample_project/screens/Arrays/categories.dart';
import 'package:sample_project/screens/placedetailsPage.dart';
import 'package:sample_project/screens/Arrays/places.dart';


class Homecontent extends StatefulWidget {
  const Homecontent({Key? key}): super(key:key); 

  @override
  _HomecontentState createState() =>
      _HomecontentState(); 
}

class _HomecontentState extends State<Homecontent> {
  String selectedCategory = categories[0];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categoryPlaces =
        places.where((place) => place['category'] == selectedCategory).toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 20.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      'Good Morning, Gihan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    radius: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = categories[index];
                          });
                        },
                        child: Chip(
                          label: Text(
                            categories[index],
                            style: TextStyle(
                              color: selectedCategory == categories[index]
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          backgroundColor: selectedCategory == categories[index]
                              ? Colors.white
                              : Colors.black,
                          elevation: 2.0,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            for (var place in categoryPlaces)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          PlaceDetailsScreen(
                        name: place['name']!,
                        image: place['image']!,
                        description: place['description']!,
                        rating: place['rating']!,
                        hours: place['hours']!,
                        days: place['days']!,
                        category: place['category']!,
                      ),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    color: Theme.of(context).cardTheme.color,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Image.asset(
                              place['image']!,
                              width: double.infinity,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    place['name']!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Rating: ',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '${place['rating']}',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

