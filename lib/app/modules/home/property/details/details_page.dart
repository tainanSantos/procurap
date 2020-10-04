import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

// class DetailsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Detalhes"),
//         backgroundColor: Color.fromRGBO(74, 76, 255, 1),
//       ),
//       body: Gallery()
//       // SingleChildScrollView(
//       //   child: Column(
//       //     children: [
//       //       ExpansionTile(
//       //         title: Text("Imagens do ímóvel"),
//       //         children: [

//       //         ],
//       //       ),
//       //       Row(
//       //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //         children: [
//       //           FlatButton(onPressed: () {}, child: Text("Reservar")),
//       //           FlatButton(
//       //               onPressed: () {}, child: Text("Falar com propriétário")),
//       //         ],
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
        backgroundColor: CustomColor.primary,
      ),
      body: Gallery(),
    );
  }
}

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  bool loading;
  List<String> ids;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loading = true;
    ids = [];
    loadsImages();
  }

  loadsImages() async {
    final respnse = await Dio().get("https://picsum.photos/v2/list");
    List<String> _images = [];
    print(respnse.data);
    for (var img in respnse.data) {
      print(img['id']);
      _images.add(img['id']);
    }
    print("---------------------------------------");
    print(_images.length);
    print("---------------------------------------");

    setState(() {
      loading = false;
      ids = _images;

      print("-------ssssss--------------------------------");
      print(ids.length);
      print("---------------------------------------");
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading)
      return Center(
        child: CircularProgressIndicator(),
      );
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    elevation: 0,
                  ),
                  backgroundColor: Colors.black,
                  body: Center(
                    child: Image.network(
                        "https://picsum.photos/id/${ids[index]}/1000/1000"),
                  ),
                ),
              ),
            );
          },
          child:
              Image.network("https://picsum.photos/id/${ids[index]}/1000/1000"),
        );
      },
      itemCount: ids.length,
    );
  }
}
