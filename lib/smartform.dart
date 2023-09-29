import 'package:flutter/material.dart';

class SmartForm extends StatelessWidget {
  final smartFormController = PageController();
  int page = 0; //contador de paginas

  List pagesList = [
    Text('Página de login'),
    Text('Página do mapa'),
  ];//lista de paginas

  void changeSmart(bool nextPage){
    if (page < 1 && nextPage){
      page++;
      smartFormController.nextPage(duration: Duration(milliseconds: 300),
          curve: Curves.easeIn);
    }
  }//funcao para avancar as paginas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SmartWaste Page'),
        ),
        body: PageView.builder(
            controller: smartFormController,
            itemBuilder: (BuildContext context, int index) {
              return pagesList[index];
            }),
        bottomNavigationBar: Row(
          children: [
            FloatingActionButton(
                onPressed: () => changeSmart(true),
                child: Text('Entrar'))

          ],
        ));
  }
}
