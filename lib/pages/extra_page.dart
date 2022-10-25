import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ExtraPage extends StatelessWidget {

  DateTime selectDate = DateTime.now();
  final firstDate = DateTime(2010,1);
  final lastDate = DateTime(2022,12);

  ExtraPage({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CalendarDatePicker(
            initialDate: selectDate, 
            firstDate: firstDate, 
            lastDate: lastDate, 
            onDateChanged: (DateTime value) {  }, 
            
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Text("Observación", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),)
          ),
          Container(
            padding: const EdgeInsets.only( top: 5, left: 5, bottom: 5, right: 20 ),
            margin: const EdgeInsets.only( bottom: 20, left: 20, right: 20, top: 10 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  offset: const Offset(0, 5),
                  blurRadius: 5
                )
              ],
            ),
            child: const TextField(
              keyboardType: TextInputType.text,
              autocorrect: false,
              maxLines: 4,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: "Escribir aqui..."
              )
            ),
          )
        ],
      ),
    );
  }
}