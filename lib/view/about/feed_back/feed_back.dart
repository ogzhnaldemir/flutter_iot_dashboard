import 'package:flutter/material.dart';



class FeedBackPage extends StatelessWidget {
  const FeedBackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
              height: 100.0, // resim yüksekliği
              child: Image.asset(
                'images/robit15.png', // resim dosyası yolu
                fit: BoxFit.contain, // resim boyutu
              ),
            ),
            const SizedBox(height:92.0),
              _header(context),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter your message",
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              ElevatedButton(
          onPressed: () {
 
          
        }, child: const Text("Gönder"))
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: const [
        Text(
          "Lütfen Geri dönüş sağlayın",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
