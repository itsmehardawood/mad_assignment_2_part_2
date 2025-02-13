import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Functional App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenuScreen(),
    );
  }
}

// Main Menu Screen
class MainMenuScreen extends StatelessWidget {
  final List<String> operations = [
    'Friendship Calculator',
    'Currency Converter',
    'Temperature Converter',
    'BMI Calculator',
    'Length Converter',
    'Area Converter',
    'Volume Converter',
    'Weight and Mass Converter',
    'Time Converter (Belgium to Pakistan)',
    'Age Calculator',
    'Time Converter (H to M or M to Sec)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Multi-Functional App',
          style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: operations.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                operations[index],
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            onTap: () {
              // Navigate to the respective operation screen
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendshipCalculatorScreen(),
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CurrencyConverterScreen(),
                    ),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TemperatureConverterScreen(),
                    ),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMICalculatorScreen(),
                    ),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LengthConverterScreen(),
                    ),
                  );
                  break;
                case 5:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AreaConverterScreen(),
                    ),
                  );
                  break;
                case 6:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VolumeConverterScreen(),
                    ),
                  );
                  break;
                case 7:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WeightMassConverterScreen(),
                    ),
                  );
                  break;
                case 8:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TimeConverterBelgiumToPakistanScreen(),
                    ),
                  );
                  break;
                case 9:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AgeCalculatorScreen(),
                    ),
                  );
                  break;
                case 10:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TimeConverterHMSToScreen(),
                    ),
                  );
                  break;
              }
            },
          );
        },
      ),
    );
  }
}

// Friendship Calculator Screen
class FriendshipCalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friendship Calculator'),
      ),
      body: Center(
        child: Text('Friendship Calculator Screen'),
      ),
    );
  }
}

// Currency Converter Screen
class CurrencyConverterScreen extends StatefulWidget {
  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  final TextEditingController _amountController = TextEditingController();
  String _convertedAmount = '';

  void _convertCurrency() {
    double amount = double.tryParse(_amountController.text) ?? 0.0;
    double conversionRate = 280.0; // Example: 1 USD = 0.85 EUR
    double convertedAmount = amount * conversionRate;
    setState(() {
      _convertedAmount = 'Converted Amount: $convertedAmount PKR';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: 'Enter Amount in USD'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertCurrency,
              child: Text('Convert'),
            ),
            SizedBox(height: 20),
            Text(_convertedAmount,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

// Temperature Converter Screen
class TemperatureConverterScreen extends StatefulWidget {
  @override
  _TemperatureConverterScreenState createState() =>
      _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState
    extends State<TemperatureConverterScreen> {
  final TextEditingController _celsiusController = TextEditingController();
  String _fahrenheit = '';

  void _convertToFahrenheit() {
    double celsius = double.tryParse(_celsiusController.text) ?? 0.0;
    double fahrenheit = (celsius * 9 / 5) + 32;
    setState(() {
      _fahrenheit = 'Fahrenheit: $fahrenheit °F';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _celsiusController,
              decoration:
                  InputDecoration(labelText: 'Enter Temperature in Celsius'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertToFahrenheit,
              child: Text('Convert to Fahrenheit'),
            ),
            SizedBox(height: 20),
            Text(
              _fahrenheit,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// BMI Calculator Screen
class BMICalculatorScreen extends StatefulWidget {
  @override
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  String _bmiResult = '';

  void _calculateBMI() {
    double height = double.tryParse(_heightController.text) ?? 0.0;
    double weight = double.tryParse(_weightController.text) ?? 0.0;
    if (height > 0 && weight > 0) {
      double bmi = weight / ((height / 100) * (height / 100));
      setState(() {
        _bmiResult = 'BMI: ${bmi.toStringAsFixed(2)}';
      });
    } else {
      setState(() {
        _bmiResult = 'Invalid input';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _heightController,
              decoration: InputDecoration(labelText: 'Enter Height in cm'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _weightController,
              decoration: InputDecoration(labelText: 'Enter Weight in kg'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            Text(
              _bmiResult,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Length Converter Screen
class LengthConverterScreen extends StatefulWidget {
  @override
  _LengthConverterScreenState createState() => _LengthConverterScreenState();
}

class _LengthConverterScreenState extends State<LengthConverterScreen> {
  final TextEditingController _metersController = TextEditingController();
  String _feet = '';

  void _convertToFeet() {
    double meters = double.tryParse(_metersController.text) ?? 0.0;
    double feet = meters * 3.28084;
    setState(() {
      _feet = 'Feet: $feet ft';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Length Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _metersController,
              decoration: InputDecoration(labelText: 'Enter Length in Meters'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertToFeet,
              child: Text('Convert to Feet'),
            ),
            SizedBox(height: 20),
            Text(
              _feet,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Area Converter Screen
class AreaConverterScreen extends StatefulWidget {
  @override
  _AreaConverterScreenState createState() => _AreaConverterScreenState();
}

class _AreaConverterScreenState extends State<AreaConverterScreen> {
  final TextEditingController _squareMetersController = TextEditingController();
  String _squareFeet = '';

  void _convertToSquareFeet() {
    double squareMeters = double.tryParse(_squareMetersController.text) ?? 0.0;
    double squareFeet = squareMeters * 10.7639;
    setState(() {
      _squareFeet = 'Square Feet: $squareFeet ft²';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Area Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _squareMetersController,
              decoration:
                  InputDecoration(labelText: 'Enter Area in Square Meters'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertToSquareFeet,
              child: Text('Convert to Square Feet'),
            ),
            SizedBox(height: 20),
            Text(
              _squareFeet,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Volume Converter Screen
class VolumeConverterScreen extends StatefulWidget {
  @override
  _VolumeConverterScreenState createState() => _VolumeConverterScreenState();
}

class _VolumeConverterScreenState extends State<VolumeConverterScreen> {
  final TextEditingController _litersController = TextEditingController();
  String _gallons = '';

  void _convertToGallons() {
    double liters = double.tryParse(_litersController.text) ?? 0.0;
    double gallons = liters * 0.264172;
    setState(() {
      _gallons = 'Gallons: $gallons gal';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volume Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _litersController,
              decoration: InputDecoration(labelText: 'Enter Volume in Liters'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertToGallons,
              child: Text('Convert to Gallons'),
            ),
            SizedBox(height: 20),
            Text(
              _gallons,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Weight and Mass Converter Screen
class WeightMassConverterScreen extends StatefulWidget {
  @override
  _WeightMassConverterScreenState createState() =>
      _WeightMassConverterScreenState();
}

class _WeightMassConverterScreenState extends State<WeightMassConverterScreen> {
  final TextEditingController _kilogramsController = TextEditingController();
  String _pounds = '';

  void _convertToPounds() {
    double kilograms = double.tryParse(_kilogramsController.text) ?? 0.0;
    double pounds = kilograms * 2.20462;
    setState(() {
      _pounds = 'Pounds: $pounds lbs';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight and Mass Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _kilogramsController,
              decoration:
                  InputDecoration(labelText: 'Enter Weight in Kilograms'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertToPounds,
              child: Text('Convert to Pounds'),
            ),
            SizedBox(height: 20),
            Text(
              _pounds,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Time Converter (Belgium to Pakistan) Screen
class TimeConverterBelgiumToPakistanScreen extends StatefulWidget {
  @override
  _TimeConverterBelgiumToPakistanScreenState createState() =>
      _TimeConverterBelgiumToPakistanScreenState();
}

class _TimeConverterBelgiumToPakistanScreenState
    extends State<TimeConverterBelgiumToPakistanScreen> {
  final TextEditingController _belgiumTimeController = TextEditingController();
  String _pakistanTime = '';

  void _convertToPakistanTime() {
    String belgiumTime = _belgiumTimeController.text;
    // Belgium is UTC+1, Pakistan is UTC+5 (4 hours ahead)
    try {
      DateTime belgiumDateTime = DateTime.parse('2023-10-01 $belgiumTime');
      DateTime pakistanDateTime = belgiumDateTime.add(Duration(hours: 4));
      setState(() {
        _pakistanTime =
            'Pakistan Time: ${pakistanDateTime.hour}:${pakistanDateTime.minute}';
      });
    } catch (e) {
      setState(() {
        _pakistanTime = 'Invalid time format';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Converter (Belgium to Pakistan)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _belgiumTimeController,
              decoration:
                  InputDecoration(labelText: 'Enter Time in Belgium (HH:MM)'),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertToPakistanTime,
              child: Text('Convert to Pakistan Time'),
            ),
            SizedBox(height: 20),
            Text(
              _pakistanTime,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Age Calculator Screen
class AgeCalculatorScreen extends StatefulWidget {
  @override
  _AgeCalculatorScreenState createState() => _AgeCalculatorScreenState();
}

class _AgeCalculatorScreenState extends State<AgeCalculatorScreen> {
  final TextEditingController _dobController = TextEditingController();
  String _age = '';

  void _calculateAge() {
    String dob = _dobController.text;
    try {
      DateTime birthDate = DateTime.parse(dob);
      DateTime currentDate = DateTime.now();
      int age = currentDate.year - birthDate.year;
      if (currentDate.month < birthDate.month ||
          (currentDate.month == birthDate.month &&
              currentDate.day < birthDate.day)) {
        age--;
      }
      setState(() {
        _age = 'Age: $age years';
      });
    } catch (e) {
      setState(() {
        _age = 'Invalid date format';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Age Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _dobController,
              decoration: InputDecoration(
                  labelText: 'Enter Date of Birth (YYYY-MM-DD)'),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateAge,
              child: Text('Calculate Age'),
            ),
            SizedBox(height: 20),
            Text(
              _age,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Time Converter (H to M or M to Sec) Screen
class TimeConverterHMSToScreen extends StatefulWidget {
  @override
  _TimeConverterHMSToScreenState createState() =>
      _TimeConverterHMSToScreenState();
}

class _TimeConverterHMSToScreenState extends State<TimeConverterHMSToScreen> {
  final TextEditingController _hoursController = TextEditingController();
  final TextEditingController _minutesController = TextEditingController();
  String _convertedTime = '';

  void _convertToMinutes() {
    double hours = double.tryParse(_hoursController.text) ?? 0.0;
    double minutes = hours * 60;
    setState(() {
      _convertedTime = 'Minutes: $minutes min';
    });
  }

  void _convertToSeconds() {
    double minutes = double.tryParse(_minutesController.text) ?? 0.0;
    double seconds = minutes * 60;
    setState(() {
      _convertedTime = 'Seconds: $seconds sec';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Converter (H to M or M to Sec)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _hoursController,
              decoration: InputDecoration(labelText: 'Enter Hours'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _convertToMinutes,
              child: Text('Convert Hours to Minutes'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _minutesController,
              decoration: InputDecoration(labelText: 'Enter Minutes'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _convertToSeconds,
              child: Text('Convert Minutes to Seconds'),
            ),
            SizedBox(height: 20),
            Text(
              _convertedTime,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
