import 'package:flutter/material.dart';

// 1. Create a variable that stores the converted currency value
//2. Create a function that multiplies the value given by the text.
//3. Store the value in the variable that we created.
//4. Display the variable.
// StateLessWidget can't change anything on UI we Have to Use StateFullWidget.

class CurrencyConverterMaterial extends StatefulWidget {
  const CurrencyConverterMaterial({super.key});

  @override
  State<CurrencyConverterMaterial> createState() => _CurrencyConverter();
}

class _CurrencyConverter extends State<CurrencyConverterMaterial> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text('Currency Converter'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            // Padding
            //Container
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: 'Please Enter the Amount in USD',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),

            //Button

            //Raised
            //Appears like a text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: convert,
                // Debug Release and profile mode
                // debugPrint('Button Pressed');
                // if (kDebugMode) {
                //   print('Button clicked!!');
                // }
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*class CurrencyConverterMaterialPage extends StatelessWidget {
  CurrencyConverterMaterialPage({super.key});
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double result = 0;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text('Currency Converter'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            // Padding
            //Container
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please Enter the Amount in USD',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),

            //Button

            //Raised
            //Appears like a text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed:() {
                  setState({
                    result = double.parse(textEditingController.text) * 81;
                  });
                  // Debug Release and profile mode
                  // debugPrint('Button Pressed');
                  // if (kDebugMode) {
                  //   print('Button clicked!!');
                  // }
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
} */
