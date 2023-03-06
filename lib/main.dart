import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste admissional TiTa',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste admissional TiTa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorButton(colorName: 'Vermelho', color: Colors.red),
            ColorButton(colorName: 'Azul', color: Colors.blue),
            ColorButton(colorName: 'Verde', color: Colors.green),
          ],
        ),
      ),
    );
  }
}

class ColorButton extends StatelessWidget {
  final String colorName;
  final Color color;

  const ColorButton({Key? key, required this.colorName, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ColorPage(colorName: colorName, color: color)),
        );
      },
      child: Text(colorName),
    );
  }
}

class ColorPage extends StatelessWidget {
  final String colorName;
  final Color color;

  const ColorPage({Key? key, required this.colorName, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(colorName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
          child: Image.asset(
            '../assets/images/sample_image.png',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
