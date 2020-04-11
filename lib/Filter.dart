import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          textTheme: TextTheme(
              title: TextStyle(
                  color: Colors.purple[900],
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          elevation: 0,
          title: new Text('FILTER'),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                icon: new Icon(
                  Icons.close,
                  size: 40,
                ),
                color: Colors.grey,
                onPressed: () => Navigator.pop(context),
              ),
            )
          ]),
      body: FilterItems(),
    );
  }
}

class FilterItems extends StatefulWidget {
  @override
  _FilterItemsState createState() => _FilterItemsState();
}

class _FilterItemsState extends State<FilterItems> {
  List<bool> isSelected = [false, false, false];
  RangeValues _values = RangeValues(5, 60);//for budget slider
  double _value = 18;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            child: Column(
          children: [
            Text("HOUSE TYPE"),
            ToggleButtons(
              selectedBorderColor: Colors.purple[900],
              selectedColor: Colors.purple[900],
              children: <Widget>[
                Column(
                  children: [Icon(Icons.person), Text("Room")],
                ),
                Column(
                  children: [Icon(Icons.group), Text("Twin Sharing")],
                ),
                Column(
                  children: [Icon(Icons.group_add), Text("Multi-Sharing")],
                )
              ],
              isSelected: isSelected,
              onPressed: (int index) {
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
            )
          ],
        )),
        Container(
          child: Column(
            children: [
              Text("Budget"),
              RangeSlider(
                values: _values,
                activeColor: Colors.purple[900],
                labels: RangeLabels(_values.start.toInt().toString(),
                    _values.end.toInt().toString()),
                min: 5,
                max: 60,
                divisions: 11,
                onChanged: (RangeValues values) {
                  setState(() {
                    if (values.end - values.start >= 20) {
                      _values = values;
                    } else {
                      if (_values.start == values.start) {
                        _values =
                            RangeValues(_values.start, _values.start + 20);
                      } else {
                        _values = RangeValues(_values.end - 20, _values.end);
                      }
                    }
                  });
                },
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Age"),
              Slider(
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
                min: 18,
                max: 60,
                divisions: 42,
                value: _value,
                activeColor: Colors.purple[900],
                label: _value.toInt().toString(),
                
              ),
            ],
          ),
        )
      ],
    );
  }
}
