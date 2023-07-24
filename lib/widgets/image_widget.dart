import 'package:flutter/material.dart';

class ImageWigdets extends StatefulWidget {
  final String title;
  const ImageWigdets({super.key, required this.title});

  @override
  State<ImageWigdets> createState() => _ImageWigdetsState();
}

class _ImageWigdetsState extends State<ImageWigdets> {
  @override
  Widget build(BuildContext context) {
    String imgBuildingUrl =
        'https://images.unsplash.com/photo-1664894365779-27f7575cccad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80';
    String peaImgUrl =
        'https://images.unsplash.com/photo-1690023603728-f4fc93cf56c9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2574&q=80';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Expanded(
                child: Container(
                  color: Colors.red.shade200,
                  child: Image.asset(
                    'assets/images/model_1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange.shade400,
                  //height: 1500,
                  child: Image.network(
                    imgBuildingUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.red.shade300,
                child: Image.asset(
                  'assets/images/model_1.jpg',
                  fit: BoxFit.cover,
                ),
              )),
              Expanded(
                child: SizedBox(
                  //height: 200,
                  child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/loading.gif',
                      image: peaImgUrl),
                ),
              )
            ]),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.blue.shade400,
              child: CircleAvatar(
                backgroundImage: NetworkImage(peaImgUrl),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.red,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
