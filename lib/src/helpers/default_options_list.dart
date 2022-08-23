import 'package:flutter/material.dart';
import 'package:help_ukraine_widget/help_ukraine_widget.dart';

///
const defaultOptionsList = [
  HelpOptionButton(
    title: 'Donate',
    iconSize: 20,
    child: Text(
      '💸',
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20.8,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  HelpOptionButton(
    title: 'Support Ukraine',
    iconSize: 19,
    iconColor: Colors.redAccent,
    child: Text(
      '❤',
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20.8,
        fontWeight: FontWeight.w500,
        color: Colors.redAccent,
        // color: Color(0x00ff3f30),
      ),
    ),
  ),
  HelpOptionButton(
    title: 'Share this widget',
    iconSize: 19,
    iconColor: Colors.blueAccent,
    child: Text(
      '📌',
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20.8,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
];
