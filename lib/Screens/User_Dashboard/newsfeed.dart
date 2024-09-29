import 'package:flutter/material.dart';

class NewsFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Dogecoin to the Moon...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications_none, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending News',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.blue),
                ],
              ),
              SizedBox(height: 16),
              NewsCard(
                author: 'Ryan Browne',
                title:
                    'Crypto investors should be prepared to lose all their money, BOE governor says',
                subtitle:
                    '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                date: '',
              ),
              SizedBox(height: 16),
              CategoryChips(),
              SizedBox(height: 16),
              NewsCard(
                author: 'Matt Villano',
                title: '5 things to know about the conundrum of lupus',
                date: 'Sunday, 9 May 2021',
                subtitle: '',
              ),
              SizedBox(height: 8),
              NewsCard(
                author: 'Zain Korsgaard',
                title: '4 ways families can ease anxiety together',
                date: 'Sunday, 9 May 2021',
                subtitle: '',
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 3,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people_outline),
      //       label: 'Book a session',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_today),
      //       label: 'Menstrual Tracking',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.feed),
      //       label: 'Newsfeed',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String author;
  final String title;
  final String subtitle;
  final String date;

  NewsCard(
      {required this.author,
      required this.title,
      required this.subtitle,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/news_image.jpg', // Replace with the image from your assets
              fit: BoxFit.cover,
              height: 180,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'by $author',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  if (date != null)
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        date,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: [
        Chip(
          label: Text('Healthy'),
          backgroundColor: Colors.blue.shade100,
        ),
        Chip(
          label: Text('Fitness'),
          backgroundColor: Colors.blue.shade50,
        ),
        Chip(
          label: Text('Health Tips & Articles'),
          backgroundColor: Colors.brown.shade100,
        ),
        Chip(
          label: Text('Success'),
          backgroundColor: Colors.green.shade50,
        ),
      ],
    );
  }
}
