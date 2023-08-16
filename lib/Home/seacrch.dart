import 'package:flutter/material.dart';


class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SearchSection(),
    );
  }
}

class SearchSection extends StatefulWidget {
  @override
  _SearchSectionState createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  String _selectedTab = 'Trending';

  void _performSearch(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  void _changeTab(String tab) {
    setState(() {
      _selectedTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () => _performSearch(_searchController.text),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.orange), // Orange border color
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTabButton('Trending'),
              SizedBox(width: 20),
              _buildTabButton('Suggested'),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: _searchQuery.isEmpty
                ? Text('Enter a search query')
                : _selectedTab == 'Trending'
                    ? _buildTrendingContent()
                    : Text('Display $_selectedTab search results for: $_searchQuery'),
          ),
        ),
      ],
    );
  }

  Widget _buildTabButton(String tabName) {
    return ElevatedButton(
      onPressed: () => _changeTab(tabName),
      style: ElevatedButton.styleFrom(
        primary: _selectedTab == tabName ? Colors.orange : Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Text(tabName),
    );
  }

  Widget _buildTrendingContent() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              // You can set an image here if you have URLs or assets
              // backgroundImage: AssetImage('your_image_asset_here'),
            ),
            title: Text('Title $index'),
            subtitle: Text('Subtitle $index'),
            onTap: () {
              // Handle tapping on an item (e.g., navigate to a detailed view)
            },
          ),
        );
      },
    );
  }
}
