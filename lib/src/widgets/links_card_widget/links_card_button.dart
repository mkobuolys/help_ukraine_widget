import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

import 'package:help_ukraine_widget/help_ukraine_widget.dart';

/// Button that redirects to links view of [HelpWidget]
class LinksCardButton extends StatefulWidget {
  /// onTap for [HoverWrapper]
  final VoidCallback onTap;

  /// Constructor
  const LinksCardButton({Key? key, required this.onTap}) : super(key: key);

  @override
  State<LinksCardButton> createState() => _LinksCardButtonState();
}

class _LinksCardButtonState extends State<LinksCardButton> {
  bool _isHovered = false;

  static const _iconSize = 13.0;

  void _onHoverChanged(bool value) {
    setState(() {
      _isHovered = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = _isHovered ? HelpColors.blue : Colors.black;
    const fontSize = 19.0;

    return HoverWrapper(
      onHoverChanged: _onHoverChanged,
      onTap: widget.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 2),
          Text(
            'Hide',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: color,
                  fontSize: fontSize,
                ),
          ),
          const SizedBox(width: 5),
          Icon(
            SFSymbols.chevron_up,
            color: color,
            size: _iconSize,
          ),
        ],
      ),
    );
  }
}
