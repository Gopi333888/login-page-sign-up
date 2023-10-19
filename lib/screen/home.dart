import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loginpage/screen/login.dart';
import 'package:loginpage/screen/signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 71, 23, 79),
        centerTitle: true,
        title: Column(
          children: [Text("Travel Mania")],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/logo1.jpeg"),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      drawer: Drawer(
        child: ListTile(
          leading: InkWell(
            //inkwell or guestordirector can be used
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("LogOut"),
                    content: Text("Log Out of your account"),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) => Loginpage(),
                                  ),
                                  (route) => false);
                            },
                            child: Text("Log out")),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancel"))
                    ],
                  );
                },
              );
            },
            child: const Text(
              "LogOut",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Explore your Life",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "India's rich tapestry of culture, history, and natural beauty beckons travelers from around the world to explore its diverse landscapes, vibrant traditions, and timeless heritage.",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "PACKAGES WE PROVIDE",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.brown),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 300,
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 300,
                      width: 400,
                      color: Color.fromARGB(255, 243, 234, 234),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/familytourig.jpg",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              "Family Vacation packages",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 19,
                    ),
                    Container(
                      height: 300,
                      width: 400,
                      color: Color.fromARGB(255, 242, 235, 235),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/gangimg.jpg",
                            height: 240,
                            width: 500,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              "Gang packages",
                              style: TextStyle(fontSize: 22),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 19,
                    ),
                    Container(
                      height: 300,
                      width: 400,
                      color: Color.fromARGB(255, 246, 233, 233),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/honeymoonimg.jpg",
                            ),
                            height: 240,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              "HoneyMoon Packages",
                              style: TextStyle(fontSize: 22),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 19,
                    ),
                    Container(
                      height: 300,
                      width: 400,
                      color: Color.fromARGB(255, 246, 233, 233),
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage(
                            "assets/images/luxuryimg1.jpg",
                          )),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              "Luxury Packages",
                              style: TextStyle(fontSize: 22),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "DESTINATION WE PROVIDE SERVICES",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 500,
                width: 500,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      height: 400,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 246, 233, 233),
                          border: Border.all(width: 3, color: Colors.black12)),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/tajimg.png",
                            ),
                            height: 210,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "New Delhi",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Center(
                            child: Text(
                              "Explore the wonders of Delhi with our curated tour package, immersing you in the city's historical monuments, bustling markets, and culinary delights.Discover the cultural treasures of Delhi.",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      height: 400,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 246, 233, 233),
                          border: Border.all(width: 3, color: Colors.black12)),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/keralaimg.jpg",
                            ),
                            height: 210,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Kerala",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Center(
                            child: Text(
                              "Experience the enchanting beauty of Kerala with our tour package, featuring serene backwaters, lush tea plantations, and pristine beaches for an unforgettable journey.",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 400,
                      width: 500,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 246, 233, 233),
                          border: Border.all(width: 3, color: Colors.black12)),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/images/rajaimg2.jpg",
                            ),
                          ),
                          Text(
                            "Rajasthan",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Center(
                            child: Text(
                              "Journey through the royal landscapes of Rajasthan with our tour package, where majestic forts, opulent palaces, and vibrant bazaars await, offering a glimpse into India's regal past.",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      width: 500,
                      height: 500,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "About Us",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Image(image: AssetImage("assets/images/about3.png")),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Welcome to our travel life! We're a team of passionate explorers eager to share our love for wanderlust and discovery. Through firsthand experiences and expert insights, we curate travel guides, tips, and inspiration to help you embark on unforgettable journeys. Join us as we navigate the world's wonders and create memories that last a lifetime.",
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
