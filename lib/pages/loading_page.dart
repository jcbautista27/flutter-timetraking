import 'package:flutter/material.dart';


class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Image.asset('assets/calendar.png', )),
              Column(
                children: [
                  Text("Control de horas",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text("Industrias Renda",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              
              MaterialButton(
                elevation: 8.0,
                minWidth: 170.0,
                height: 50.0,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: const Text("Empezar...",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                }
              )
            ],
          ),
        ),
      )
   );
  }
}