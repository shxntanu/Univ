import 'package:flutter/material.dart';
import 'package:univ/constants.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'IBM Plex Mono',
        useMaterial3: true,
        primaryColor: Colors.black,
      ),
      home: const Scaffold(
        body: HomeScaffold(),
      ),
    );
  }
}

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/pexels-mathias-reding-4392537.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      "Univ",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: 'IBM Plex Mono',
                      ),
                    )),
                  ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 70,
                      child: TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.grey.shade400),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(color: Colors.black)),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('LOGIN', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IBM Plex Mono',
                          color: Colors.black,
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 160,
                        height: 70,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(Colors.grey),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ))),
                            onPressed: () {},
                            child: Text("REGISTER",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'IBM Plex Mono',
                                )))),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
