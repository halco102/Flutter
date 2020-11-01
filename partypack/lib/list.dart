import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  CustomListView({Key key, @required this.items, @required this.quantity})
      : super(key: key);

  final List<String> items;
  final int quantity;

  @override
  _CustomListViewState createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: widget.items.length != null
            ? ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: widget.items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 200,
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            "${widget.items[index]}" +
                                widget.quantity.toString(),
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      RaisedButton(
                          child: Text("Delete"),
                          onPressed: () {
                            setState(() {
                              widget.items
                                  .removeAt(index); //remova item iz liste
                            });
                          })
                    ],
                  );
                })
            : Text("No items added"));
  }
}
