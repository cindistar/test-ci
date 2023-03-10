import 'package:flutter/material.dart';

class CompactMenu extends StatelessWidget {
  const CompactMenu(
      {super.key,
      required this.pageIndex,
      required this.onDestionationSelected});

  final int pageIndex;
  final ValueChanged<int> onDestionationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      minWidth: 80,
      leading: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 48,
          horizontal: 16,
        ),
        child: Icon(Icons.flutter_dash),
      ),
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home),
          label: Text('Pagina inicial'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.search),
          label: Text('Pesquisa'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.navigation),
          label: Text('Explorar'),
        ),
      ],
      selectedIndex: pageIndex,
      onDestinationSelected: onDestionationSelected,
    );
  }
}