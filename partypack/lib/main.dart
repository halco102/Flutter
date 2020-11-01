import 'package:flutter/material.dart';
import 'package:partypack/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _items = ["Pivo", "Sok", "Vino", "Kafa"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentItem;
  int _counter = 0;
  List<String> _listViewItems = [];

  @override
  void initState() {
    // TODO: implement initState
    this._dropDownMenuItems = getDropDownMenuItems();
    _currentItem = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> itemsInDropDown = new List();
    for (String items in _items) {
      itemsInDropDown.add(new DropdownMenuItem(
        child: Align(alignment: Alignment.center, child: new Text(items)),
        value: items,
      ));
    }
    return itemsInDropDown;
  }

  void changedDropDownItem(String selectedItem) {
    setState(() {
      _currentItem = selectedItem;
    });
  }

  bool checkCounter(int counter) {
    if (counter <= 0) {
      return true;
    }

    return false;
  }

  //listview

  //end

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Party pack")),
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: DropdownButton(
                    value: _currentItem,
                    items: _dropDownMenuItems,
                    onChanged: changedDropDownItem,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                    isExpanded: true,
                    dropdownColor: Colors.lightBlue,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton(
                        child: Text("+"),
                        onPressed: () {
                          print(_listViewItems.length);
                          setState(() {
                            _counter++;
                          });
                        },
                      ),
                      Text(
                        _currentItem,
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        _counter.toString(),
                        style: TextStyle(fontSize: 25),
                      ),
                      RaisedButton(
                          child: Text("-"),
                          onPressed: () {
                            if (checkCounter(_counter) == true) {
                              print(_counter.toString() + "cant be < 0");
                              setState(() {
                                _counter = 0;
                              });
                            } else {
                              setState(() {
                                _counter--;
                              });
                            }
                          })
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              width: 200,
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _listViewItems.add(_currentItem);
                    this._counter = 0;
                  });
                },
                child: Center(child: Text("Add item to list")),
              ),
            ),
            CustomListView(
              items: _listViewItems,
              quantity: _counter,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: null,
                  child: ClipOval(
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Center(child: Text("Calculate")),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text(
                  "0 \$",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
