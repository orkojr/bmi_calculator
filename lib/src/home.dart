import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  double _tailleValue = 30;
  double _poidValue = 3;
  double _ageValue = 1;

  double bmi(double poids, double taille) {
    var t = taille / 100;
    return (poids / (t * t)).ceilToDouble();
  }

  String conclusion(double bmi) {
    if (bmi < 18.5) {
      return "Votre poids est insuffisant";
    } else if (bmi <= 24.9) {
      return "Votre poids est normal";
    } else {
      return "vous etes en surpoids";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        title: Text(
          "Bmi calculator".toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .25,
                                color:
                                    Colors.deepPurple.shade900.withOpacity(.8),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Icon(
                                        Icons.male,
                                        size: 100,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Male",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .25,
                                color:
                                    Colors.deepPurple.shade900.withOpacity(.8),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: const [
                                      Icon(
                                        Icons.female,
                                        size: 100,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .25,
                                color:
                                    Colors.deepPurple.shade900.withOpacity(.8),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Expanded(
                                          child: Center(
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Height(cm)",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "$_tailleValue",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 60,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                      Expanded(
                                        child: SliderTheme(
                                          data: const SliderThemeData(
                                            trackHeight: 5,
                                          ),
                                          child: Slider(
                                            activeColor: Colors.redAccent,
                                            inactiveColor: Colors.deepPurple
                                                .withOpacity(.8),
                                            value: _tailleValue,
                                            min: 30,
                                            max: 300,
                                            onChanged: (value) {
                                              setState(() {
                                                _tailleValue =
                                                    value.ceilToDouble();
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .25,
                                      color: Colors.deepPurple.shade900
                                          .withOpacity(.8),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Column(
                                          children: [
                                            Expanded(
                                                child: Center(
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    "Weight(kg)",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    "$_poidValue",
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 50,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                            Expanded(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          _poidValue > 3
                                                              ? _poidValue--
                                                              : null;
                                                        });
                                                      },
                                                      onDoubleTap: () {
                                                        setState(() {
                                                          _poidValue > 3
                                                              ? _poidValue -= 2
                                                              : null;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Colors.redAccent,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          _poidValue < 400
                                                              ? _poidValue++
                                                              : null;
                                                        });
                                                      },
                                                      onDoubleTap: () {
                                                        setState(() {
                                                          _poidValue < 400
                                                              ? _poidValue += 2
                                                              : null;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Colors.redAccent,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                          ],
                                        )),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .25,
                                      color: Colors.deepPurple.shade900
                                          .withOpacity(.8),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                            child: Column(
                                          children: [
                                            Expanded(
                                                child: Center(
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    "Age(year)",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    "$_ageValue",
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 50,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )),
                                            Expanded(
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          _ageValue > 3
                                                              ? _ageValue--
                                                              : null;
                                                        });
                                                      },
                                                      onDoubleTap: () {
                                                        setState(() {
                                                          _ageValue > 1
                                                              ? _ageValue -= 2
                                                              : null;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Colors.redAccent,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          _ageValue < 180
                                                              ? _ageValue++
                                                              : null;
                                                        });
                                                      },
                                                      onDoubleTap: () {
                                                        setState(() {
                                                          _ageValue < 180
                                                              ? _ageValue += 2
                                                              : null;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Colors.redAccent,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                          ],
                                        )),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              var bm = bmi(_poidValue, _tailleValue);
              var con = conclusion(bm);
              var result = await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.deepPurple,
                  title: const Text(
                    "Votre Bmi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  content: Card(
                    child: Container(
                        height: MediaQuery.of(context).size.width * .35,
                        color: Colors.deepPurple.withOpacity(.7),
                        width: MediaQuery.of(context).size.width * .35,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "$bm",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                con,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: const Text(
                        "Close",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: const Text(
                        "Ok",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                barrierDismissible: false,
                useSafeArea: false,
              );
              if (result) {
                setState(() {
                  _poidValue = 3;
                  _tailleValue = 30;
                  _ageValue = 1;
                });
              }
            },
            child: Container(
              height: 68,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.redAccent),
              child: Center(
                child: Text(
                  'Calculer'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
