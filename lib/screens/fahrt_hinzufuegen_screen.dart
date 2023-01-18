import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unigo_prototyp/widgets/svg_scaffold_widget.dart';

class FahrtHinzufuegenScreen extends StatelessWidget {
  const FahrtHinzufuegenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgScaffoldWidget(
      child: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () async {
              var value = await Get.defaultDialog<int>(
                title: "Fahrt freigeben",
                titleStyle: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 20,
                ),
                titlePadding: EdgeInsets.only(top: 20, bottom: 2),
                backgroundColor: Colors.white,
                barrierDismissible: false,
                radius: 15,
                contentPadding: EdgeInsets.all(0),
                content: Column(
                  children: [
                    Container(
                      child: Text(
                        "Ihre Fahrt wird jetzt Anderen angezeigt.",
                        style: GoogleFonts.inter(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    Container(
                      child: Text(
                        "+ 20pt",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop<int>(context, 1);
                      },
                      child: Container(
                        width: 122,
                        height: 31,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 194, 223, 222),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(
                          "Alles klar",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              );

              print(value);
            },
            child: Text("show dialog"),
          ),
        ),
      ),
    );
  }
}
