import 'package:flutter/material.dart';

class NewsFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: _buildSearchBar(),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          child: IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 16,
        )
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Dogecoin to the Moon...',
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search, color: Colors.grey),
            fillColor: Color(0xffE5F5FC),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Trending News',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        Text('See All'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward, color: Colors.black),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          _buildTrendingNews(),
          _buildCategoryTabs(),
          _buildNewsFeedItems(),
        ],
      ),
    );
  }

  Widget _buildTrendingNews() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildTrendingCard(
              'Crypto investors should be prepared to lose all their money, BOE governor says',
              'by Ryan Browne',
              " \'I’m going to say this very bluntly again,' he added. 'Buy them only if you’re prepared to lose all your money.' "),
          _buildTrendingCard('Another headline example', 'by Author Name',
              'Another subdetail'),
        ],
      ),
    );
  }

  Widget _buildTrendingCard(String title, String author, String subdetail) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(
                'data:image/jpeg;base64,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'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(author, style: TextStyle(color: Colors.white, fontSize: 12)),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(subdetail,
                  style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryTabs() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            _buildCategoryTab('Healthy', isSelected: true),
            _buildCategoryTab('Fitness'),
            _buildCategoryTab('Health Tips & Articles'),
            _buildCategoryTab('Success Stories & Testimonies'),
            _buildCategoryTab('Sports'),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTab(String label, {bool isSelected = false}) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff244599) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isSelected ? Colors.blue : Colors.grey),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildNewsFeedItems() {
    return Column(
      children: [
        _buildNewsFeedItem('5 things to know about the "conundrum" of lupus',
            'Matt Villano', 'Sunday, 9 May 2021'),
        _buildNewsFeedItem('4 ways families can ease anxiety together',
            'Zain Korsgaard', 'Sunday, 9 May 2021'),
      ],
    );
  }

  Widget _buildNewsFeedItem(String title, String author, String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 150,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(
                  'data:image/jpeg;base64,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'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(author,
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                    Spacer(),
                    Text(date,
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}