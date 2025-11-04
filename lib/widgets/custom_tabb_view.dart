import 'package:flutter/material.dart';

class CustomTabbView extends StatefulWidget {
  const CustomTabbView({super.key});

  @override
  State<CustomTabbView> createState() => _CustomTabbViewState();
}

class _CustomTabbViewState extends State<CustomTabbView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 42,
          title: const Text(
            'Tabs Demo',
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
          flexibleSpace: Container(
            height: 112,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF4A148C), Color(0xFF7B1FA2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          bottom: const TabBar(
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              color: Colors.white,
            ),
            labelColor: Color(0xFF4A148C),
            unselectedLabelColor: Colors.white70,
            labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: "Carro"),
              Tab(icon: Icon(Icons.image)),
              Tab(text: "Sem ícone"),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Color(0xFFF3E5F5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: TabBarView(
            children: [
              _buildTabContent(
                title: "Aba do Carro",
                description:
                    "Esta aba contém apenas o ícone e o texto 'Carro'.",
                child: const Icon(
                  Icons.directions_car,
                  size: 100,
                  color: Color(0xFF4A148C),
                ),
              ),
              _buildTabContent(
                title: "Imagem com Tab sem texto",
                description:
                    "Aqui exibimos uma imagem centralizada e redimensionada.",
                child: Image.asset(
                  "assets/image.png",
                  fit: BoxFit.contain,
                  height: 200,
                ),
              ),
              _buildTabContent(
                title: "Aba apenas com texto no Tab",
                description: "Esta aba exibe um GIF animado do Predador 👾",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/predator-badlands-yautja.gif",
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent({
    required String title,
    required String description,
    required Widget child,
  }) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: Center(
        key: ValueKey(title),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A148C),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
