import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool isRepeat = false;
  bool isShuffle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App CEUTEC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.network(
                          'https://wallpaperaccess.com/full/2893867.jpg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: ListTile(
                            title: Text('Song'),
                            subtitle: Text('Card content'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('BUTTON 1'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('BUTTON 2'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  iconSize: 48,
                  icon: Icon(Icons.skip_previous),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 64,
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 48,
                  icon: Icon(Icons.skip_next),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            Slider(
              value: 0.5,
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: isRepeat,
                      onChanged: (bool? value) {
                        setState(() {
                          isRepeat = value ?? false;
                        });
                      },
                    ),
                    Text('Repeat'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: isShuffle,
                      onChanged: (bool? value) {
                        setState(() {
                          isShuffle = value ?? false;
                        });
                      },
                    ),
                    Text('Shuffle'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
