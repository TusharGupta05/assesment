import 'package:assesment/uinecessary/colorsandstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speech_bubble/speech_bubble.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> itemsname,
      mav,
      etitle,
      evalue,
      etype,
      tname,
      taction,
      tvalue,
      dd3,
      cl1,
      cl2;
  String selected, selected1, selected2;
  @override
  void initState() {
    super.initState();
    itemsname = ['Technical'];
    selected = 'Technical';
    mav = ['Exponential'.toUpperCase()];
    selected1 = 'Exponential'.toUpperCase();
    etitle = ['MA10', 'MA10', 'MA50', 'MA100', 'MA200'];
    evalue = List<String>.generate(5, (index) => '465.28');
    etype = ['SELL', 'BUY', 'BUY', 'SELL', 'BUY'];
    tname = [
      'RSI(14)',
      'STOCH(9,6)',
      'STOCHRSI(14)',
      'MACD(12,26)',
      'ADX(14)',
      'Williams %R',
      'CCI(14)',
      'ATR(14)',
      'Highs/Lows(14)',
      'Ultimate Oscillator',
      'ROC',
      'Bull/Bear Power(13)'
    ];
    dd3 = ['CLASSIC'];
    selected2 = 'CLASSIC';
    taction = List<String>.generate(12, (index) => '-53.6549');
    tvalue = List<String>.generate(12, (index) => 'Sell');
    tvalue[0] = 'Neutral';
    tvalue[3] = 'Buy';
    tvalue[11] = 'Less Volatility';
    cl1 = ['S3', 'S2', 'S1', 'PIVOT POINTS', 'R1', 'R2', 'R3'];
    cl2 = List<String>.generate(7, (index) => '456.87');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 15,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Sensex',
          style: TextStyle(
            color: Color4,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: transparent,
        shadowColor: transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.045),
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black12.withOpacity(0.5),
                    ),
                    focusColor: Color1,
                    iconSize: 15,
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                        fontFamily: 'IBM Plex Sans'),
                    elevation: 0,
                    isExpanded: true,
                    value: selected,
                    underline: Container(
                      height: 0,
                    ),
                    items:
                        List<DropdownMenuItem>.generate(itemsname.length, (i) {
                      return DropdownMenuItem(
                        value: itemsname[i],
                        child: Text(itemsname[i]),
                        onTap: () {
                          setState(() {
                            selected = itemsname[i];
                          });
                        },
                      );
                    }),
                    onChanged: (val) {
                      setState(() {
                        selected = val;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Summary",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 0),
                  child: Container(
                    height: 350,
                    child: Row(
                      children: [
                        StepProgressIndicator(
                          padding: 0,
                          customSize: (i, b) => 8,
                          customColor: (i) =>
                              [Color7, Color2, Color10, Color5, Color6][i],
                          roundedEdges: Radius.circular(10),
                          totalSteps: 5,
                          direction: Axis.vertical,
                          currentStep: 0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              child: SpeechBubble(
                                padding: EdgeInsets.fromLTRB(12, 5, 12, 6),
                                child: Text(
                                  "Neutral",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                borderRadius: 5,
                                nipLocation: NipLocation.LEFT,
                                nipHeight: 10,
                                height: 30,
                                width: 90,
                                color: Color10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0, top: 0),
                  child: Container(
                    height: 350,
                    child: StepProgressIndicator(
                      padding: 3,
                      customSize: (i, b) => 55,
                      customStep: (i, c, d) {
                        return Container(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              [
                                '1 MIN',
                                '5 MIN',
                                '15 MIN',
                                '30 MIN',
                                '1 HR',
                                '5 HR',
                                '1 DAY',
                                '1 WK',
                                '1 MON'
                              ][i],
                              style: TextStyle(
                                  fontSize: 11,
                                  color: i == 0
                                      ? Colors.black
                                      : Colors.black.withOpacity(0.4),
                                  fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                border: i == 0
                                    ? Border.all(
                                        color: Colors.black,
                                        style: BorderStyle.solid,
                                        width: 2)
                                    : Border.all(color: Colors.transparent)),
                          ),
                        );
                      },
                      totalSteps: 9,
                      direction: Axis.vertical,
                      currentStep: 0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text(
                    "Moving Averages",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 30,
                    minWidth: 30,
                    color: Color7,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Buy",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "7",
                  style: style1,
                ),
                Text(
                  "-",
                  style: style1,
                ),
                Text(
                  "5",
                  style: style1,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Buy", style: style2),
                Text("Neutral", style: style2),
                Text("Sell", style: style2)
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: 40,
              width: 180,
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.045),
                  borderRadius: BorderRadius.circular(5)),
              child: DropdownButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black12.withOpacity(0.5),
                ),
                focusColor: Color1,
                iconSize: 15,
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                    fontFamily: 'IBM Plex Sans'),
                elevation: 0,
                isExpanded: true,
                value: selected1,
                underline: Container(
                  height: 0,
                ),
                items: List<DropdownMenuItem>.generate(mav.length, (i) {
                  return DropdownMenuItem(
                    value: mav[i],
                    child: Text(mav[i]),
                    onTap: () {
                      setState(() {
                        selected1 = mav[i];
                      });
                    },
                  );
                }),
                onChanged: (val) {
                  setState(() {
                    selected1 = val;
                  });
                },
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15,15,5),
              child: Container(
                height: 30,
                  padding:
                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.045),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('TITLE',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold)),
                      Text('    VALUE',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold)),
                      Text('TYPE',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List<Widget>.generate(
                        etitle.length,
                        (i) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Text(
                                etitle[i],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List<Widget>.generate(
                        etitle.length,
                        (i) => Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),

                              child: Text(evalue[i],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: List<Widget>.generate(
                        etitle.length,
                        (i) => Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),

                            child: Text(
                              etype[i],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: etype[i].compareTo('SELL') == 0
                                      ? Color6
                                      : Color7),
                            ))),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
              child: Column(
                children: [
                  Text(
                    "Technical Indicators",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 30,
                    minWidth: 30,
                    color: Color6,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Strong Sell",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "1",
                  style: style1,
                ),
                Text(
                  "1",
                  style: style1,
                ),
                Text(
                  "9",
                  style: style1,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Buy", style: style2),
                Text("Neutral", style: style2),
                Text("Sell", style: style2)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
              child: Container(
                height: 30,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.045),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('NAME',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold)),
                      Text('ACTION',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold)),
                      Text('VALUE',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List<Widget>.generate(
                        tname.length,
                        (i) => Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                              child: Text(
                                tname[i],
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)
                              ),
                            )),
                  ),
                  Column(
                    children: List<Widget>.generate(
                        taction.length,
                        (i) => Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 40, 5),
                              child: Text(taction[i],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                            )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: List<Widget>.generate(
                        tvalue.length,
                        (i) => Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 15, 5),
                            child: Text(
                              tvalue[i],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: tvalue[i].compareTo('Sell') == 0
                                      ? Color6
                                      : tvalue[i].compareTo('Buy') == 0
                                          ? Color7
                                          : tvalue[i].compareTo('Neutral') == 0
                                              ? Colors.black.withOpacity(0.5)
                                              : Colors.black),
                            ))),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Pivot Points",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 35,
                    width: 150,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.045),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black12.withOpacity(0.5),
                      ),
                      focusColor: Color1,
                      iconSize: 15,
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                          fontFamily: 'IBM Plex Sans'),
                      elevation: 0,
                      isExpanded: true,
                      value: selected2,
                      underline: Container(
                        height: 0,
                      ),
                      items: List<DropdownMenuItem>.generate(dd3.length, (i) {
                        return DropdownMenuItem(
                          value: dd3[i],
                          child: Text(dd3[i],),
                          onTap: () {
                            setState(() {
                              selected2 = dd3[i];
                            });
                          },
                        );
                      }),
                      onChanged: (val) {
                        setState(() {
                          selected2 = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List<Widget>.generate(
                      cl1.length,
                      (i) => Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                            child: Text(
                              cl1[i],
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(0.4)),
                            ),
                          )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List<Widget>.generate(
                      cl2.length,
                      (i) => Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 20, 5),
                            child: Text(
                              cl2[i],
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
