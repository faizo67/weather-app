import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/models/location.dart';
import 'package:weather_project/provider/toggle_btn.dart';
import 'package:weather_project/widgets/location_widget.dart';
import 'package:weather_project/widgets/main_widget.dart';
import 'package:weather_project/widgets/scrolling_card.dart';

class Foreground extends StatefulWidget {
  const Foreground({
    super.key,
  });

  @override
  State<Foreground> createState() => _ForegroundState();
}

class _ForegroundState extends State<Foreground> {
  @override
  Widget build(BuildContext context) {
    final visibilityState = Provider.of<VisibleBtn>(context);
    final height = MediaQuery.of(context).size.height;
    var inputBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(
        Radius.circular(30.0),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: visibilityState.isVisible
                ? const Icon(Icons.cancel)
                : const Icon(Icons.search),
            onPressed: () {
              setState(() {
                visibilityState.toggleBtn();
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: DefaultTextStyle(
            style: GoogleFonts.raleway(color: Colors.white),
            child: MainWidget(inputBorder: inputBorder),
          ),
        ),
      ),
    );
  }
}
