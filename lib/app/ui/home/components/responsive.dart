import 'package:flutter/material.dart';
import 'package:layout_adapt/app/ui/home/components/compact_menu.dart';
import 'package:layout_adapt/app/ui/home/components/expanded_menu.dart';

class Responsive extends StatefulWidget {
  const Responsive({super.key, required this.child});

  final Widget child;

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  int _pageIndex = 0;

  void _setPage(int index) {
    setState(() => _pageIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final screenWidget = media.size.width;
    if (screenWidget >= 750) {
      return Material(
        child: SafeArea(
          child: Row(
            children: [
              screenWidget <= 1260
                  ? CompactMenu(
                      pageIndex: _pageIndex,
                      onDestionationSelected: _setPage,
                    )
                  : ExpandedMenu(
                      pageIndex: _pageIndex,
                      onDestionationSelected: _setPage,
                    ),
              Expanded(
                child: widget.child,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Pagina inicial',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Pesquisa',
          ),
          NavigationDestination(
            icon: Icon(Icons.navigation),
            label: 'Explorar',
          ),
        ],
      ),
    );
  }
}
