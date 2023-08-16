import 'package:flutter/material.dart';
import 'package:assitant/Home/homepage.dart';



class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AccountBody(),
      ),
    );
  }
}

class AccountBody extends StatefulWidget {
  @override
  _AccountBodyState createState() => _AccountBodyState();
}

class _AccountBodyState extends State<AccountBody> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          SizedBox(height: 20),
          _buildInputField('Name', 'Enter your name', _nameController),
          SizedBox(height: 10),
          _buildInputField('Username', 'Enter your username', _usernameController),
          SizedBox(height: 10),
          _buildInputField('Mobile Number', 'Enter your mobile number', _mobileNumberController),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Implement next logic here
              String name = _nameController.text;
              String username = _usernameController.text;
              String mobileNumber = _mobileNumberController.text;

              // Process the data and navigate to the next screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Set button color to orange
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Divider(color: Colors.black)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Or Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange, // Set text color to orange
                  ),
                ),
              ),
              Expanded(child: Divider(color: Color.fromARGB(255, 247, 4, 4))),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement Google sign-up logic here
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Set button color to white
              elevation: 2,
              padding: EdgeInsets.all(0),
            ),
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.orange], // Change gradient colors as needed
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_translate, color: Colors.white), // Replace with Google logo
                    SizedBox(width: 10),
                    Text(
                      ' Google',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              // Implement login navigation logic here
            },
            child: Text(
              'Already have an account? Login',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.orange, // Set text color to orange
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(String labelText, String hintText, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.orange, // Set text color to orange
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}

