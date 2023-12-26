import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgriConnect',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontFamily: 'CustomFont',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.green, // Couleur verte pour le titre
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          'AgriConnect',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.green, // Couleur verte pour le titre de l'AppBar
              ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action de recherche
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'AgriConnect',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            ListTile(
              title: Text('Accueil'),
              onTap: () {
                // Action pour l'accueil
              },
            ),
            ListTile(
              title: Text('Livraison'),
              onTap: () {
                // Action pour la livraison
              },
            ),
            ListTile(
              title: Text('Politique de Confidentialité'),
              onTap: () {
                // Action pour la politique de confidentialité
              },
            ),
            // Icônes de réseaux sociaux
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text('Facebook'),
              onTap: () {
                // Action pour ouvrir la page Facebook
              },
            ),
            ListTile(
              // Utilisez FontAwesomeIcons.instagram pour Instagram
              leading: FaIcon(FontAwesomeIcons.instagram),
              title: Text('Instagram'),
              onTap: () {
                // Action pour ouvrir la page Instagram
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact'),
              onTap: () {
                // Action pour le contact téléphonique
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          // Vos listes d'images de récoltes et autres
          // ...

          // Exemple de bouton de navigation
          ElevatedButton(
            onPressed: () {
              // Action pour la page du Marché
            },
            child: Row(
              children: [
                Icon(Icons.shopping_cart),
                SizedBox(width: 8),
                Text('Marché'),
              ],
            ),
          ),
          // Autres boutons de navigation...
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Action pour la page d'accueil
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Action pour la page du Marché
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Action pour la page de l'inventaire
              },
            ),
            IconButton(
              icon: Icon(Icons.group),
              onPressed: () {
                // Action pour la page de la Communauté
              },
            ),
          ],
        ),
      ),
    );
  }
}
