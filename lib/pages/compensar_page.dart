import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:time_traking/widgets/custom_button.dart';


// ignore: must_be_immutable
class CompensarPage extends StatefulWidget {


  const CompensarPage({super.key});

  @override
  State<CompensarPage> createState() => _ExtraPageState();
}

class _ExtraPageState extends State<CompensarPage> {
  DateTime selectDate = DateTime.now();
  late TimeOfDay _timeOfDay1 = const TimeOfDay(hour: 13, minute: 00);
  late TimeOfDay _timeOfDay2 = const TimeOfDay(hour: 13, minute: 00);

  final firstDate = DateTime(2010,1);
  final lastDate = DateTime(2022,12);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 22),
            child: const Text('COMPENSAR H.E.', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: Colors.orange),)
          ),
          _calendario(),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Text("Observación", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),)
          ),
          _textFieldNotes(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _hoursFirts(),
              _hoursSecons(),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomButton(
              text: "Guardar", 
              onPressed: () {
                // ignore: avoid_print
                print("Guardado!!!");
              }
            ),
          )
          
          

          
        ],
      ),
    );
  }

  Widget _calendario() {
    return CalendarDatePicker(
      initialDate: selectDate, 
      firstDate: firstDate, 
      lastDate: lastDate, 
      onDateChanged: (DateTime value) {  }, 
            
    );
  }

  Widget _textFieldNotes() {
    return Container(
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
          );
  }

  _hoursFirts(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          
          children: const [
            Icon(Icons.circle, color: Colors.green, size: 12,),
            SizedBox(width: 10,),
            Text("INICIO")
          ],
          
        ),
        GestureDetector(
          child: Container(
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
            child: Text(_timeOfDay1.format(context).toString(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),)),
          onTap: (){
            _horaInicio();
          },
        ),
      ],
      
    );
  }

  _hoursSecons(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          
          children: const [
            Icon(Icons.circle, color: Colors.red, size: 12,),
            SizedBox(width: 10,),
            Text("FIN")
          ],
          
        ),
        GestureDetector(
          child: Container(
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
            child: Text(_timeOfDay2.format(context).toString(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),)),
          onTap: (){
            _horaFin();
          },
        ),
      ],
      
    );
  }

  Future<TimeOfDay?> _horaInicio() {
    return showTimePicker(
      context: context, 
      initialTime: _timeOfDay1,
    ).then((value) {
      setState(() {
        if (value == null) return;
        _timeOfDay1 = value;
      });
      return null;
    });
  }

  Future<TimeOfDay?> _horaFin() {
    return showTimePicker(
      context: context, 
      initialTime: _timeOfDay2,
    ).then((value) {
      setState(() {
        if (value == null) return;
        _timeOfDay2 = value;
      });
      return null;
    });
  }

}