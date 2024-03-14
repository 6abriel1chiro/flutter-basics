import 'package:flutter/material.dart';
import 'package:flutter_application_0/screens/profile_screen.dart';

enum SearchType { radio1, radio2 }

class LoginPage extends StatelessWidget {
  TextEditingController textEditingController =
      TextEditingController(text: 'Initial value here');
  late String _searchTerm;
  SearchType _searchType = SearchType.radio1;
  double _value = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cupertino App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Cupertino App Bar'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Text('Hello World'),
                  ),
                  Image.asset('assets/launch.png', width: 20),
                  TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: 'Cellphone',
                          icon: Icon(Icons.settings_cell))),
                  TextField(
                    controller: textEditingController,
                    onChanged: (String val) => _searchTerm = val,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'you@email.com',
                        icon: Icon(Icons.contact_mail)),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password', icon: Icon(Icons.vpn_key)),
                  ),
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfilePage(
                                  name: 'pepe',
                                  email: 'croto@gmail.com',
                                ),
                              ),
                            )
                          },
                      child: Text('Ingresar')),
                  Checkbox(value: true, onChanged: (_) => true),
                  Switch(value: false, onChanged: (_) => true),
                  CheckboxListTile(
                      title: Text('Remeber account'),
                      value: false,
                      onChanged: null),
                  SwitchListTile(
                      title: Text('Accept term of condtion'),
                      value: true,
                      onChanged: (_) => false),
                  Row(
                    children: <Widget>[
                      Text('Radio1'),
                      Radio<SearchType>(
                        onChanged: (val) => _searchType = val!,
                        groupValue: SearchType.radio1,
                        value: _searchType,
                      ),
                      Text('Radio2'),
                      Radio<SearchType>(
                          onChanged: (val) => _searchType = val!,
                          groupValue: SearchType.radio2,
                          value: _searchType)
                    ],
                  ),
                  Slider(
                    label: _value.toString(),
                    min: 0,
                    max: 100,
                    onChanged: (_) => true,
                    value: _value,
                  ),
                  DropdownButton<SearchType>(
                    value: _searchType,
                    onChanged: (_) => true,
                    items: <DropdownMenuItem<SearchType>>[
                      DropdownMenuItem(
                        value: SearchType.radio1,
                        child: Text('Web'),
                      ),
                      DropdownMenuItem(
                        value: SearchType.radio2,
                        child: Text('Mobile'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
