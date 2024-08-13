import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String _selectedCurrency = 'USD'; // Moneda seleccionada
  String _conversionType = 'Compra'; // Tipo de conversión (Compra o Venta)
  double _conversionRateCompraUSD = 24.6834; // Lempiras a Dólares
  double _conversionRateVentaUSD = 24.8068; // Lempiras a Dólares
  double _conversionRateCompraEUR = 24.6834 * 0.9; // Lempiras a Euros
  double _conversionRateVentaEUR = 24.8068 * 0.9; //Lempiras a Euros
  final TextEditingController _amountController = TextEditingController();
  double _result = 0.0;

  void _convertCurrency() {
    double amount = double.tryParse(_amountController.text) ?? 0.0;
    setState(() {
      if (_selectedCurrency == 'USD') {
        if (_conversionType == 'Compra') {
          _result = amount / _conversionRateCompraUSD;
        } else {
          _result = amount / _conversionRateVentaUSD;
        }
      } else {
        if (_conversionType == 'Compra') {
          _result = amount / _conversionRateCompraEUR;
        } else {
          _result = amount / _conversionRateVentaEUR;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App CEUTEC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedCurrency = 'USD';
                      _convertCurrency();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedCurrency == 'USD'
                        ? Colors.grey[300]
                        : Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('Dólar'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedCurrency = 'EUR';
                      _convertCurrency();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedCurrency == 'EUR'
                        ? Colors.grey[300]
                        : Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('Euro'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _conversionType = 'Compra';
                      _convertCurrency();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _conversionType == 'Compra'
                        ? Colors.grey[300]
                        : Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('Compra'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _conversionType = 'Venta';
                      _convertCurrency();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _conversionType == 'Venta'
                        ? Colors.grey[300]
                        : Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('Venta'),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Cantidad en Lempiras',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertCurrency,
              child: Text('Convertir'),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado: ${_result.toStringAsFixed(2)} $_selectedCurrency',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
