import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protótipo de App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/menu': (context) => MenuPage(),
        '/cadastro1': (context) => CadastroPage(1),
        '/cadastro2': (context) => CadastroPage(2),
        '/cadastro3': (context) => CadastroPage(3),
        '/cadastro4': (context) => CadastroPage(4),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Login-Jadise'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Email:____________________________', style: TextStyle(fontSize: 24)),
              SizedBox(height: 10),
              Text('Senha:___________________________', style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.pushNamed(context, '/menu');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Menu'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text('Cadastro de Funcionario'),
              onTap: () {
                Navigator.pushNamed(context, '/cadastro1');
              },
            ),
            ListTile(
              title: Text('Cadastro de Cliente'),
              onTap: () {
                Navigator.pushNamed(context, '/cadastro2');
              },
            ),
            ListTile(
              title: Text('Cadastro de Produto'),
              onTap: () {
                Navigator.pushNamed(context, '/cadastro3');
              },
            ),
            ListTile(
              title: Text('Cadastro de Vendas'),
              onTap: () {
                Navigator.pushNamed(context, '/cadastro4');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CadastroPage extends StatelessWidget {
  final int numero;

  CadastroPage(this.numero);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro $numero'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
       
        child: Align(
          alignment: Alignment.topLeft, // Alinhamento no canto superior esquerdo
          child: Container(
            padding: EdgeInsets.all(16), // Espaçamento interno dos botões
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  child: Text('Criar'),
                  onPressed: () {
                    // Ação de criar
                  },
                ),
                SizedBox(height: 10), // Espaçamento entre os botões
                ElevatedButton(
                  child: Text('Editar'),
                  onPressed: () {
                    // Ação de editar
                  },
                ),
                SizedBox(height: 10), // Espaçamento entre os botões
                ElevatedButton(
                  child: Text('Ler'),
                  onPressed: () {
                    // Ação de ler
                  },
                ),
                SizedBox(height: 10), // Espaçamento entre os botões
                ElevatedButton(
                  child: Text('Atualizar'),
                  onPressed: () {
                    // Ação de atualizar
                        },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}