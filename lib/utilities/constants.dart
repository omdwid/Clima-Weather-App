import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const ktextfeildinputdecoration = InputDecoration(
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
    size: 30.0,
  ),
  fillColor: Colors.white,
  filled: true,
  hintText: 'Enter the city name',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
);
