import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> news = [
      {
        "title": "Inicio de Clases",
        "description": "Las clases del nuevo semestre iniciarán el próximo lunes.",
        "imageUrl": "assets/imagen1.jpg",
      },
      {
        "title": "Nuevo Edificio",
        "description": "Se inauguró el nuevo edificio de Ingeniería.",
        "imageUrl": "assets/imagen2.jpg",
      },
      {
        "title": "Conferencia de Tecnología",
        "description": "El próximo mes se llevará a cabo una conferencia sobre las últimas tendencias en tecnología.",
        "imageUrl": "assets/imagen3.jpg",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 100, // Limita la altura máxima de la imagen
                      maxWidth: double.infinity, // Usa todo el ancho disponible
                    ),
                    child: Image.asset(
                      news[index]["imageUrl"]!,
                      fit: BoxFit.contain, // Ajusta la imagen para que se contenga dentro del área disponible
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    news[index]["title"]!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    news[index]["description"]!,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
