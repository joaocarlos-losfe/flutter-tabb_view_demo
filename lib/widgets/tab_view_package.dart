import 'package:flutter/material.dart';
import 'package:tabb_view_demo/pages/second_home_page.dart';
import 'package:tabbed_view/tabbed_view.dart';
import '../pages/profile_page.dart';
import '../pages/settings_page.dart';

class TabbedViewExample extends StatefulWidget {
  const TabbedViewExample({super.key});

  @override
  State<TabbedViewExample> createState() => _TabbedViewExampleState();
}

class _TabbedViewExampleState extends State<TabbedViewExample> {
  late TabbedViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabbedViewController([
      TabData(
        text: 'Início',
        content: SecondHomePage(onOpenNewTab: _addNewTabFromHome),
      ),
      TabData(text: 'Perfil', content: const ProfilePage()),
      TabData(text: 'Configurações', content: const SettingsPage()),
    ]);
  }

  void _addNewTab([String? label]) {
    _controller.addTab(
      TabData(
        text: label ?? 'Nova Aba ${_controller.tabs.length + 1}',
        content: Scaffold(
          appBar: AppBar(title: const Text('Nova Página')),
          body: const Center(
            child: Text('Conteúdo de uma nova guia criada pelo botão +'),
          ),
        ),
      ),
    );
  }

  void _addNewTabFromHome() {
    _controller.addTab(
      TabData(
        text: 'Aba da Home ${_controller.tabs.length + 1}',
        leading: (context, status) => Icon(Icons.home, size: 16),
        content: Scaffold(
          appBar: AppBar(title: const Text('Nova guia aberta pela Home')),
          body: const Center(
            child: Text('Esta aba foi aberta a partir da HomePage!'),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TabbedView com novas guias')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: TabbedViewTheme(
          data: TabbedViewThemeData.classic(
            tabRadius: 12,
            borderColor: Colors.amber,
            brightness: Brightness.light,
          ),
          child: TabbedView(
            controller: _controller,
            tabsAreaButtonsBuilder: (context, tabsCount) => [
              TabButton.icon(
                IconProvider.data(Icons.add),
                onPressed: _addNewTab,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
