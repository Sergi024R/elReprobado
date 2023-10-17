import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Padding(padding: EdgeInsets.all(4.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(
'https://www.jornada.com.mx/ultimas/2023/07/15/lionel-messi-firma-contrato-con-inter-de-miami-hasta-2025-2633.html/lionel-messi.jpg-9448.html/image_large?bc=2023-07-15T14:52:16-05:00'
          ),
      ),
      ),
      title: const Text("Messi"),
      centerTitle: false, //si usas android para centrarlo se utiliza esta instruccion
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(child: Container(color: Colors.red,)),
          const Text('Sergio'),
          const Text('Reyes')
        ],
      ),),
    );
  }

}