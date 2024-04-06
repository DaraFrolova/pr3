import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Главное окно')),

      body: Center(child: Column(children: [

        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_2');}, child: Text('Открыть второе окно',style: TextStyle(fontSize: 24, color: Colors.blue) )),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_3');}, child: Text('Открыть третье окно',style: TextStyle(fontSize: 24, color: Colors.red) )),
        ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_4');}, child: Text('Открыть четвертое окно',style: TextStyle(fontSize: 24, color: Colors.green) ))

      ],)),

    );

  }

}


class Screen_2 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Второе окно',style: TextStyle(fontSize: 20, color: Colors.blue))),

      body: Center(child:  new Column(

        children: [
          new Text('Для переключения между окнами или виджетами нужно использовать Navigator. Navigator – виджет-класс, позволяющий управлять стеком дочерних виджетов, т.е. открывать, закрывать и переключать окна или страницы. Когда мы используем MaterialApp, то экземпляр класса Navigator уже создан.', style: TextStyle(fontSize: 20, color: Colors.blue)),

   ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 32, color: Colors.blue)))
   ])),
    
    );

  }

}



class Screen_3 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Третье окно',style: TextStyle(fontSize: 20, color: Colors.red))),

      body: Center(child:  new Column(

        children: [
	  new Image.asset("image/i1.png"),
   ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 32, color: Colors.red)))
   ])),
    
    );

  }

}



class Screen_4 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Четвертое окно',style: TextStyle(fontSize: 20, color: Colors.blue))),

      body: Center(child:  new Column(

        children: [
          new Text(' Еще одно окно ', style: TextStyle(fontSize: 24, color: Colors.green)),
          ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/screen_5');}, child: Text('Открыть пятое окно',style: TextStyle(fontSize: 24, color: Colors.purpleAccent) )),
   ElevatedButton(onPressed: (){ Navigator.pop(context);}, child: Text('Назад',style: TextStyle(fontSize: 32, color: Colors.green)))
   ])),
    
    );

  }

}





class Screen_5 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Пятое окно',style: TextStyle(fontSize: 20, color: Colors.purpleAccent))),

      body: Center(child: ElevatedButton(onPressed: (){

        Navigator.pop(context);

      }, child: Text('Назад',style: TextStyle(fontSize: 32, color: Colors.purpleAccent)))),

    );

  }

}



void main() {

  runApp(MaterialApp(

    initialRoute: '/',

    routes: {

      '/':(BuildContext context) => MainScreen(),

      '/screen_2':(BuildContext context) => Screen_2(),
      '/screen_3':(BuildContext context) => Screen_3(),
      '/screen_4':(BuildContext context) => Screen_4(),
      '/screen_5':(BuildContext context) => Screen_5()

    }

  ));

}