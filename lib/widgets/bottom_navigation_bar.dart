import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const BottomNavigationBarWidget({
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState
    extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: widget.selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Ionicons.home_outline),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.bookmark_outline),
          label: "Bookmark",
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.ticket_outline),
          label: "Ticket",
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.person_outline),
          label: "Profile",
        )
      ],
      onTap: widget.onTabSelected,
    );
  }
}