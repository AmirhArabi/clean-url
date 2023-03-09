import 'package:clean_ui/module/extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean URL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _formkey = GlobalKey<FormState>();
  late String _url;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://s2.uupload.ir/files/index_g7qd.jpg'),
                fit: BoxFit.cover
              )
            ),
          ).center,
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFAFBFBFF),
              borderRadius: BorderRadius.all(
                  Radius.circular(45)
                ),
                boxShadow: [
                  // set box shadow
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 15,
                    offset: Offset(-20, 20),
                  )
                ]
             ),
            margin: EdgeInsets.only(
                top: context.height * 0.20,
                left: context.width * 0.05,
            ),
            height: context.height * 0.7,
            width: context.width * 0.6,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("CLEAN URL",
                    style: TextStyle(
                    fontSize: 75,
                    fontFamily: "chillax",
                    color: Color(0xFF3F2B68)
                   ),
                  ).padding30,
                  const SizedBox(width: 150),
                  const Text("Professional Services For Your Professional Website",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "daxline",
                        color: Color(0xFF696565)
                    ),
                  ).padding50,
                  const Text("keep it brief.",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: "daxline",
                        color: Color(0xFF696565)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        const Text("A",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: "daxline",
                              color: Color(0xFF696565)
                            ),
                          ),
                        const SizedBox(width: 10),
                        Text("easier",
                          style: TextStyle(
                              fontSize: 45,
                              fontFamily: "daxline",
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text("way to",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: "daxline",
                              color: Color(0xFF807A7A)
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text("share links",
                          style: TextStyle(
                              fontSize: 45,
                              fontFamily: "daxline",
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800
                          ),
                        ),
                      ],
                    ).vPadding15,
                  ),
                  const SizedBox(height: 60),
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        // set box shadow
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(-8, 8),
                        )
                      ],
                      color: Color(0xFFECECEC),
                      borderRadius: BorderRadius.all(
                          Radius.circular(30)
                      ),
                    ),
                    child: SizedBox(
                      width: context.width * 0.5,
                      height: context.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Form(
                          key: _formkey,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: TextButton(
                                  onPressed: (){
                                    if (_formkey.currentState!.validate()) {
                                      _formkey.currentState!.save();
                                    }
                                  },
                                  child: const Text(
                                      "shorten",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: "chillax",
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF3F2B68)
                                      ),
                                  )
                              ),
                              hintText: "Your Long Url",
                              hintStyle: const TextStyle(
                                fontSize: 18,
                                fontFamily: "daxline",
                                color: Color(0xFF6E6E6E)
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your url!';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              if (kDebugMode) {
                                print(value!);
                              }
                              _url = value!;
                            },
                          ).center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
