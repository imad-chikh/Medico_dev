// ///Package imports
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// // ignore: depend_on_referenced_packages
// import 'package:intl/intl.dart';
// import 'package:open_file/open_file.dart';

// ///Pdf import
// import 'package:syncfusion_flutter_pdf/pdf.dart';
// ///Dart import
// import 'dart:io';

// ///Package imports
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// // ignore: depend_on_referenced_packages
// import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

// import '../../config/theme.dart';
// ///Local imports



// /// Render pdf of course completion certificate
// class FormFillingPdf extends StatefulWidget{
//   /// Creates pdf of course completion certificate
//  //const FormFillingPdf(Key key) : super(key: key);
//   @override
//   _FormFillingPdfState createState() => _FormFillingPdfState();
// }

// class _FormFillingPdfState  extends State<FormFillingPdf>{
//   _FormFillingPdfState();

//   @override
//   void dispose() {
//     _dateController.dispose();
//     _fullNameController.dispose();
//     _ageController.dispose();
//     super.dispose();
//   }

//   final TextEditingController _dateController = TextEditingController(
//       text: DateFormat('MMMM d, yyyy').format(DateTime.now()));

//   final TextEditingController _fullNameController =
//   TextEditingController(text: 'Patienet name');

//   final TextEditingController _ageController =
//   TextEditingController(text: 'ans');

//   int _groupValue = 0;
//   bool _newsletter = false;
//   bool one = false;
//   bool two = false;
//   bool three = false;
//   bool four = false;
//   bool five = false;
//   bool six = false;
//   bool seven = false;
//   bool eight = false;
//   DateTime selectedDate = DateTime.now();
//   //_dateController.text = DateFormat('MMMM d, yyyy').format(selectedDate);

//   // Future<void> _selectDate(BuildContext context) async {
//   //   final DateTime? picked = await showDatePicker(
//   //       context: context,
//   //       initialDate: selectedDate,
//   //       firstDate: DateTime(2000),
//   //       lastDate: DateTime(2100));
//   //   if (picked != null && picked != selectedDate) {
//   //     setState(() {
//   //       selectedDate = picked;
//   //       _dateController.text = DateFormat('MMMM d, yyyy').format(selectedDate);
//   //     });
//   //   }
//   // }

//   void _changed(int? value) {
//     setState(() {
//       _groupValue = value!;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                         'Please enter the information about the prescription in the form bellow!',
//                         style: TextStyle(fontSize: 26, color:mainColorDim)),

//                     const SizedBox(height: 5, width: 30),

//                     Row(children: <Widget>[
//                       Checkbox(
//                           value: one,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               one = value!;
//                             });
//                           }),

//                       const Text('GROUPAGE-RHESUS',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ]),
//                     const SizedBox(height: 5, width: 30),
//                     Row(children: <Widget>[
//                       Checkbox(
//                           value: two,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               two = value!;
//                             });
//                           }),
//                       const Text('GLYCEMIE A JEUN',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ]),
//                     const SizedBox(height: 5, width: 30),
//                     Row(children: <Widget>[
//                       Checkbox(
//                           value: three,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               three = value!;
//                             });
//                           }),
//                       const Text('GLYCEMIE POST-PRANDIALE-HGPO',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ]),
//                     const SizedBox(height: 5, width: 30),
//                     Row(children: <Widget>[
//                       Checkbox(
//                           value: four,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               four = value!;
//                             });
//                           }),
//                       const Text('UREE SANGUIE',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ]),
//                     const SizedBox(height: 5, width: 30),
//                     Row(children: <Widget>[
//                       Checkbox(
//                           value: five,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               five = value!;
//                             });
//                           }),
//                       const Text('VREATINEMIE',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ]),
//                     const SizedBox(height: 5, width: 30),
//                     Row(children: <Widget>[
//                       Checkbox(
//                           value: six,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               six = value!;
//                             });
//                           }),
//                       const Text('NFS-VS-ASLO-ASLO',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ]),
//                     const SizedBox(height: 5, width: 30),
//                     Row(children: <Widget>[
//                       Checkbox(
//                           value: seven,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               seven= value!;
//                             });
//                           }),
//                       const Text('TAUX DE FABRINOGENE',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ]),
//                     const SizedBox(height: 5, width: 30),
//                     Row(children: <Widget>[
//                       Checkbox(
//                           value: eight,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               eight = value!;
//                             });
//                           }),
//                       const Text('BW',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ]),
//                     const SizedBox(height: 5, width: 30),
//                     Row(mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                       Checkbox(
//                           value: _newsletter,
//                           onChanged: (bool? value) {
//                             setState(() {
//                               _newsletter = value!;
//                             });
//                           }),
//                       const Text('SEROLOGIE',style: TextStyle(fontWeight: FontWeight.bold),),
//                       Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
//                         Text('-RUBEOLE (IgG , IgM)'),
//                         Text('-TOXOPLASMOSE (IgG , IgM)'),
//                         Text('-HIV'),
//                         Text('-HBS'),
//                         Text('-CHLAMYDIALE'),
//                         Text('-HVC'),
//                       ],)
//                     ]),


//                     const SizedBox(height: 10, width: 30),
//                     Center(
//                         child: SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child:Row(children: [
//                             TextButton(
//                               onPressed: _viewTemplate,
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                 MaterialStateProperty.all<Color>(mainColor),
//                                 padding: MaterialStateProperty.all(
//                                     const EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
//                               ),
//                               child: const Text(
//                                 'View Template',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                             const SizedBox(height: 0, width: 12),
//                             TextButton(
//                               onPressed: () => _fillFormFields(false),
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                 MaterialStateProperty.all<Color>(mainColor),
//                                 padding: MaterialStateProperty.all(
//                                     const EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
//                               ),
//                               child: const Text(
//                                 'Fill Form',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                             const SizedBox(height: 0, width: 12),
//                             TextButton(
//                               onPressed: () => _fillFormFields(true),
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                 MaterialStateProperty.all<Color>(Colors.blue),
//                                 padding:  MaterialStateProperty.all(
//                                     const EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
//                               ),
//                               child: const Text(
//                                 'Fill And Flatten',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             )
//                           ],
//                           //_getButtonWidgets(context),
//                         ),
//                 ),
//               ),
//               ],
//             ))),));
//   }

//   // Widget _getButtonWidgets(BuildContext context) {
//   //   return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//   //     TextButton(
//   //       onPressed: _viewTemplate,
//   //       style: ButtonStyle(
//   //         backgroundColor:
//   //         MaterialStateProperty.all<Color>(Colors.white),
//   //         padding:MaterialStateProperty.all(
//   //             const EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
//   //       ),
//   //       child: const Text(
//   //         'View Template',
//   //         style: TextStyle(color: Colors.white),
//   //       ),
//   //     ),
//   //     const SizedBox(height: 0, width: 12),
//   //     TextButton(
//   //       onPressed: () => _fillFormFields(false),
//   //       style: ButtonStyle(
//   //         backgroundColor:
//   //         MaterialStateProperty.all<Color>(Colors.white),
//   //         padding:MaterialStateProperty.all(
//   //             const EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
//   //       ),
//   //       child: const Text(
//   //         'Fill Form',
//   //         style: TextStyle(color: Colors.white),
//   //       ),
//   //     ),
//   //     const SizedBox(height: 0, width: 12),
//   //     TextButton(
//   //       onPressed: () => _fillFormFields(true),
//   //       style: ButtonStyle(
//   //         backgroundColor:
//   //         MaterialStateProperty.all<Color>(Colors.white),
//   //         padding:MaterialStateProperty.all(
//   //             const EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
//   //       ),
//   //       child: const Text(
//   //         'Fill And Flatten',
//   //         style: TextStyle(color: Colors.white),
//   //       ),
//   //     )
//   //   ]);
//   // }

//   // List<Widget> _getGenderWidgets(BuildContext context) {
//   //   return <Widget>[
//   //     Row(children: <Widget>[
//   //       Radio<int>(
//   //         value: 0,
//   //         groupValue: _groupValue,
//   //         onChanged: _changed,
//   //         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//   //       ),
//   //       Text('Male', style: TextStyle(fontSize: 16, color: Colors.black)),
//   //     ]),
//   //     Row(children: <Widget>[
//   //       Radio<int>(
//   //         value: 2,
//   //         groupValue: _groupValue,
//   //         onChanged: _changed,
//   //         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//   //       ),
//   //       Text('Female', style: TextStyle(fontSize: 16, color: Colors.black)),
//   //     ]),
//   //     Row(children: <Widget>[
//   //       Radio<int>(
//   //         value: 1,
//   //         groupValue: _groupValue,
//   //         onChanged: _changed,
//   //         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//   //       ),
//   //       Text('Unspecified',
//   //           style: TextStyle(fontSize: 16, color: Colors.black)),
//   //     ])
//   //   ];
//   // }

//   Future<void> _fillFormFields(bool isFlatten) async {
//     //Load the existing PDF document
//     final PdfDocument document =
//     PdfDocument(inputBytes: await _readData('test_flutter.pdf'));

//     //Get the form
//     final PdfForm form = document.form;

//     //Get text box and fill value
//      final PdfTextBoxField name = document.form.fields[1] as PdfTextBoxField;
//      name.text = _fullNameController.text;

//     // final PdfTextBoxField email = document.form.fields[2] as PdfTextBoxField;
//     // email.text = _emailController.text;

//     // //Get the radio button and selec

//      final PdfTextBoxField dob = form.fields[0] as PdfTextBoxField;
//      dob.text = _dateController.text=DateFormat('MMMM d, yyyy').format(selectedDate);;
  

  

//     //Get the checkbox field
//     final PdfCheckBoxField form_one = form.fields[0] as PdfCheckBoxField;
//     form_one.isChecked = one;

//     final PdfCheckBoxField form_two = form.fields[1] as PdfCheckBoxField;
//     form_two.isChecked = two;

//     final PdfCheckBoxField form_three = form.fields[2] as PdfCheckBoxField;
//     form_three.isChecked = three;

//     final PdfCheckBoxField form_four = form.fields[3] as PdfCheckBoxField;
//     form_four.isChecked = four;

//     final PdfCheckBoxField form_five = form.fields[4] as PdfCheckBoxField;
//     form_five.isChecked = five;

//     final PdfCheckBoxField form_six = form.fields[5] as PdfCheckBoxField;
//     form_six.isChecked = six;

//     final PdfCheckBoxField form_seven = form.fields[6] as PdfCheckBoxField;
//     form_seven.isChecked = seven;

//     final PdfCheckBoxField form_eight = form.fields[7] as PdfCheckBoxField;
//     form_eight.isChecked = eight;

//     //Disable to view the form field values properly in mobile viewers
//     form.setDefaultAppearance(false);

//     // Set flatten
//     if (isFlatten) {
//       form.flattenAllFields();
//     }

//     //Save and launch the document
//     final List<int> bytes = await document.save();
//     //Dispose the document.
//     document.dispose();

//     //Save and launch file.
//     await FileSaveHelper.saveAndLaunchFile(
//         bytes, isFlatten ? 'Flatten.pdf' : 'Form.pdf');
//   }

//   Future<void> _viewTemplate() async {
//     final List<int> documentBytes = await _readData('assets/pdf/test_flutter.pdf');
//     await FileSaveHelper.saveAndLaunchFile(documentBytes, 'assets/pdf/test_flutter.pdf');
//   }

//   Future<List<int>> _readData(String name) async {
//     final ByteData data = await rootBundle.load('assets/pdf/$name');
//     return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
//   }
// }




// // ignore: avoid_classes_with_only_static_members
// ///To save the pdf file in the device
// class FileSaveHelper {
//   static const MethodChannel _platformCall = MethodChannel('launchFile');

//   ///To save the pdf file in the device
//   static Future<void> saveAndLaunchFile(
//       List<int> bytes, String fileName) async {
//     String? path;
//     if (Platform.isAndroid ||
//         Platform.isIOS ||
//         Platform.isLinux ||
//         Platform.isWindows) {
//       final Directory directory = await getApplicationSupportDirectory();
//       path = directory.path;
//     } else {
//       path = await PathProviderPlatform.instance.getApplicationSupportPath();
//     }
//     final File file =
//     File(Platform.isWindows ? '$path\\$fileName' : '$path/$fileName');
//     await file.writeAsBytes(bytes, flush: true);
//     if (Platform.isAndroid || Platform.isIOS) {
//       final Map<String, String> argument = <String, String>{
//         'file_path': '$path/$fileName'
//       };
//       try {
//         //ignore: unused_local_variable
//         final Future<Map<String, String>?> result =
//         _platformCall.invokeMethod('viewPdf', argument);
//       } catch (e) {
//         throw Exception(e);
//       }
//     } else if (Platform.isWindows) {

//       final url = file.path;
//       await OpenFile.open(url);
//      // await Process.run('start', <String>['$path\\$fileName'],
//        //   runInShell: true);
//     } else if (Platform.isMacOS) {
//       await Process.run('open', <String>['$path/$fileName'], runInShell: true);
//     } else if (Platform.isLinux) {
//       await Process.run('xdg-open', <String>['$path/$fileName'],
//           runInShell: true);
//     }
//   }
// }
