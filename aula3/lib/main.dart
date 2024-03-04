import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
          title: const Text(
            'CIDADES DE RONDÔNIA',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Image(
              width: 1000,
              image: const AssetImage('assets/jipa.jpg'),
              fit: BoxFit.cover,
              height: 280,
            ),

            Container(
              child: Card(
                child: Column(
                  children:[
                    ListTile(
                      title: const Text('Brasil',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      trailing: Icon(Icons.star, color: Colors.blue),
                      subtitle: Text('Ji-Paraná, Rondônia'),
                      
                    ),
                    Text('3.500 estrelas', textAlign: TextAlign.right),

                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [

                              Icon(Icons.facebook, color: Colors.blue),
                              Text('Facebook'),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Icon(Icons.map, color: Colors.blue),
                              Text('Endereço'),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Column(
                            children: [
                              Icon(Icons.share, color: Colors.blue),
                              Text('Compartilhar'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Ji-Paraná é um município brasileiro do estado de '
                        'Rondônia. Sua população, conforme estimativas '
                        'do IBGE de 2021, era de 131.026 habitantes, '
                        'sendo o segundo mais populoso do estado e o '
                        'décimo sexto mais populoso da Região Norte do '
                        'Brasil, a 226ª mais populosa do Brasil e a 113ª '
                        'mais populosa cidade do interior brasileiro.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
