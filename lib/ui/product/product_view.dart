import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductView extends ConsumerWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Productos'),
      ),
      body: Column(
        children:[
          MisCategorias(),
        
              Divider(height:2,),

              MisProdcutos(),
        ]
      ),
    );
  }
}

class MisProdcutos extends StatelessWidget {
  const MisProdcutos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: IconosCategorias(),
            title: Text('Producto $index'),
            subtitle: Text('Mensaje'),
          );
        },
      ),
    );
  }
}

class MisCategorias extends StatelessWidget {
  const MisCategorias({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconosCategorias(),  
        IconosCategorias(),  
        IconosCategorias(),  
        IconosCategorias(),  
        IconosCategorias(),  
      ],
    );
  }
}

class IconosCategorias extends StatelessWidget {
  const IconosCategorias({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        child: Icon(Icons.card_travel),
        radius:20,
      ),
    );
  }
}

