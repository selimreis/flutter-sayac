import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

int sayac = 0;

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi  = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayaç", style: TextStyle(color: Color(0xFF212121)),),
        centerTitle: true,
        backgroundColor: Color(0xFFCDDC39),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranGenisligi/20),
            child: Text("$sayac", style: TextStyle(fontSize: ekranGenisligi/5),),
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranGenisligi/20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: ekranGenisligi/4,
                  height: ekranYuksekligi/10,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      sayac = 0;
                    });
                  },
                    style: ElevatedButton.styleFrom(primary: Color(0xFFCDDC39), onPrimary: Color(0xFFAFB42B)),
                    child: Text("Sıfırla", style: TextStyle(color: Color(0xFF212121)),),),
                ),
                SizedBox(
                  width: ekranGenisligi/4,
                  height: ekranYuksekligi/10,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      if(sayac != 0){
                        sayac = sayac - 1;
                      }
                    });
                  },
                      style: ElevatedButton.styleFrom(primary: Color(0xFFCDDC39), onPrimary: Color(0xFFAFB42B)),
                      child: Text("Azalt", style: TextStyle(color: Color(0xFF212121)),),),
                ),
                SizedBox(
                  width: ekranGenisligi/4,
                  height: ekranYuksekligi/10,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      sayac = sayac + 1;
                    });
                  },
                    style: ElevatedButton.styleFrom(primary: Color(0xFFCDDC39), onPrimary: Color(0xFFAFB42B)),
                    child: Text("Arttır", style: TextStyle(color: Color(0xFF212121)),),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
