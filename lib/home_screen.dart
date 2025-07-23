import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    InicioPage(),
    HistorialMedicoPage(),
    PerfilPage(),
    PremiumPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _irAConfiguracion() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ConfiguracionPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biosync'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings), // Icono configuracion
            tooltip: 'Configuración',
            onPressed: _irAConfiguracion,
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 50, 164, 172),
        elevation: 4,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 50, 164, 172),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Icono Inicio
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services), // Icono botiquín
            label: 'Historial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Icono perfil
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium), // Icono premium
            label: 'Premium',
          ),
        ],
      ),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Página de Inicio'),
    );
  }
}

class HistorialMedicoPage extends StatelessWidget {
  const HistorialMedicoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Página de Historial Médico'),
    );
  }
}

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Página de Perfil'),
    );
  }
}

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Sección Premium'),
    );
  }
}

class ConfiguracionPage extends StatelessWidget {
  const ConfiguracionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        backgroundColor: const Color.fromARGB(255, 50, 164, 172),
      ),
      body: const Center(
        child: Text('Aquí van las opciones de configuración'),
      ),
    );
  }
}