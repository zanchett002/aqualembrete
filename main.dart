import 'package:flutter/material.dart';

void main() {
  runApp(const AquaLembreteApp());
}

class AquaLembreteApp extends StatelessWidget {
  const AquaLembreteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AquaLembrete',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _pesoController = TextEditingController();
  double _metaDiaria = 0.0;
  double _consumoAtual = 0.0;

  void _calcularMeta() {
    double peso = double.tryParse(_pesoController.text) ?? 0.0;
    setState(() {
      _metaDiaria = (peso * 35) / 1000;
      _consumoAtual = 0.0;
    });
  }

  void _registrarConsumo(double quantidadeMl) {
    setState(() {
      _consumoAtual += quantidadeMl / 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progresso = _metaDiaria > 0 ? (_consumoAtual / _metaDiaria).clamp(0.0, 1.0) : 0.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('AquaLembrete'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _pesoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Informe seu peso (kg)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: _calcularMeta,
              child: const Text('Calcular Meta'),
            ),
            const SizedBox(height: 30),
            if (_metaDiaria > 0) ...[
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: CircularProgressIndicator(
                      value: progresso,
                      strokeWidth: 10,
                    ),
                  ),
                  Text(
                    '${(progresso * 100).toStringAsFixed(0)}%',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Consumido: ${_consumoAtual.toStringAsFixed(2)}L / ${_metaDiaria.toStringAsFixed(2)}L',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _registrarConsumo(250),
                    child: const Text('+ 250 ml'),
                  ),
                  ElevatedButton(
                    onPressed: () => _registrarConsumo(500),
                    child: const Text('+ 500 ml'),
                  ),
                ],
              ),
            ]
          ],
        ),
      ),
    );
  }
}