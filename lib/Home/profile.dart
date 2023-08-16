import 'package:flutter/material.dart';

void main() => runApp(ProfilePage());

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: ProfileScreen(),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: Colors.orange,
                      width: 3,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80', // Replace with your profile picture URL
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Vini Roger',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Keep your face always toward the sunshine, and shadows will fall behind you.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                      child: Text('Follow'),
                    ),
                    SizedBox(width: 8.0),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                      child: Text('Message'),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Birth Date : 20 - 03 - 2002',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'City : Bangalore',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Profession : Designer',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Zodiac Sign : Taurus',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Hobbies : Dancing, Painting',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Interests : Cricket, Sketching, Web Series',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '* Star indicates common interests',
                            style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0), // Added space here
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCircularButton(Icons.add, 'Add'),
                          _buildCircularButton(Icons.bookmark, 'Save'),
                          _buildCircularButton(Icons.send, 'Send'),
                          _buildCircularButton(Icons.more_horiz, 'More'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _currentIndex == 0 ? Colors.black : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          'Memories',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _currentIndex == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _currentIndex == 1 ? Colors.black : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _currentIndex == 1 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _currentIndex == 2 ? Colors.black : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          'Favorites',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _currentIndex == 2 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 3;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: _currentIndex == 3 ? Colors.black : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          'Tags',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _currentIndex == 3 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                if (_currentIndex == 0)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCircularImage('https://www.sotc.in/blog/wp-content/uploads/2022/09/Hawa-Mahal.jpg'),
                      _buildCircularImage('https://www.sotc.in/blog/wp-content/uploads/2022/09/Hawa-Mahal.jpg'),
                      _buildCircularImage('https://www.sotc.in/blog/wp-content/uploads/2022/09/Hawa-Mahal.jpg'),
                    ],
                  ),
                if (_currentIndex != 0)
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 9, // Number of items (posts, favorites, or tags)
                    itemBuilder: (context, index) {
                      return _buildCurvedImage('https://2.bp.blogspot.com/-JYQ8x3mIAq4/UdRNXZb3rtI/AAAAAAAAATs/VpGaowkM4cw/s1600/Lotus-Temple-front+view.jpg'); // Replace with your image URLs
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCurvedImage(String imageUrl) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCircularImage(String imageUrl) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.orange,
          width: 2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCircularButton(IconData icon, String label) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {},
        color: Colors.black,
        tooltip: label,
      ),
    );
  }
}
