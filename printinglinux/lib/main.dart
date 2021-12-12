import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Printing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(child: Text('Click the Print button')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final doc = pw.Document();
          doc.addPage(pw.MultiPage(
              pageFormat: PdfPageFormat.a4,
              build: (pw.Context context) => [pw.Text('Hello World')]));

          final pdf = doc.save();

          await Printing.layoutPdf(onLayout: (PdfPageFormat format) => pdf);
        },
        tooltip: 'Print',
        child: const Icon(Icons.print),
      ),
    );
  }
}
