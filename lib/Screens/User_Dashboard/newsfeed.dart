import 'package:flutter/material.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

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
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ),
        const SizedBox(
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
      child: const Padding(
        padding: EdgeInsets.only(left: 10.0),
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
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Trending News',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
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
      margin: const EdgeInsets.symmetric(horizontal: 16),
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
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage('assets/images/newsholder.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(author,
                  style: const TextStyle(color: Colors.white, fontSize: 12)),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(subdetail,
                  style: const TextStyle(color: Colors.white, fontSize: 12)),
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
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xff244599) : Colors.transparent,
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
            image: const DecorationImage(
              image: AssetImage('assets/images/holderone.png'),
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
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(author,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12)),
                    const Spacer(),
                    Text(date,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12)),
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
