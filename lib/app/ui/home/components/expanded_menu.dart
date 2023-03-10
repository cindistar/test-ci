import 'package:flutter/material.dart';

class ExpandedMenu extends StatelessWidget {
  const ExpandedMenu(
      {super.key,
      required this.pageIndex,
      required this.onDestionationSelected});

  final int pageIndex;
  final ValueChanged<int> onDestionationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: pageIndex,
      onDestinationSelected: onDestionationSelected,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 48,
            horizontal: 16,
          ),
          child: Text(
            'Cubos Feed',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.home),
          label: Text('Pagina inicial'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.search),
          label: Text('Pesquisa'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.navigation),
          label: Text('Explorar'),
        ),
      ],
    );
  }
}