import 'package:flutter/material.dart';


class ResumenPage extends StatelessWidget {
  const ResumenPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('8', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                  Text(' Horas', style: TextStyle(fontSize: 18, ),),
                ],
              ),
            ),
            const Text('Pendientes', style: TextStyle(color: Colors.black54, fontSize: 16),)
          ],
        ),
        _listViewCard()
      ],
    );
  }

   _listViewCard(){
    return ListView(
      padding: const EdgeInsets.only(top: 100),
      children: [
        Card(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  color: Colors.grey
                ),
                
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("OPERADOR UNO", style: TextStyle(fontSize: 20 ,color: Colors.white, fontWeight: FontWeight.bold),)
                ),
                
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.call_made_outlined, color: Colors.green,),
                              Text('Extras', style: TextStyle(fontSize: 18),),
                            ],
                          ),
                          const Text('90', style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15, left: 15, top: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,    
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.call_received_sharp, color: Colors.red,),
                              Text('Compensación', style: TextStyle(fontSize: 18),),
                            ],
                          ),
                          const Text('100', style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
          
        )
      ],
    );
  }
}