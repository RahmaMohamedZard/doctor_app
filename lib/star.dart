import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star,size: 16,color: Colors.amber,),
        Icon(Icons.star,size: 16,color: Colors.amber,),
        Icon(Icons.star,size: 16,color: Colors.amber,),
        Icon(Icons.star,size: 16,color: Colors.amber,),
        Icon(Icons.star,size: 16,color: Colors.amber,),

      
      ],
    );
  }
}