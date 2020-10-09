import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/home/property/new_property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/property/new_property/components/components.dart';
import 'package:procurap/app/modules/home/property/new_property/new_property_controller.dart';

class PhotosPage extends StatefulWidget {
  final String title;
  const PhotosPage({Key key, this.title = "Photos"}) : super(key: key);

  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  final controller = Modular.get<NewPropertyController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCutom(),
      body: containerCustom(
        [
          titleCustom("Adcione Fotos do Imóvel"),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text("Adcionar Imagens do Imóvel")),
              IconButton(
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.grey,
                  ),
                  onPressed: () async {
                    var gallery = await ImagePicker.platform.pickImage(
                      source: ImageSource.gallery,
                    );
                    if (gallery.path != null)
                      controller.urlImagesList.add(gallery.path);
                    print("CAMINHO DA IMAGEMS >>> ${gallery.path}");
                  }),
              IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                ),
                onPressed: () async {
                  var picture = await ImagePicker.platform.pickImage(
                    source: ImageSource.camera,
                  );

                  if (picture.path != null)
                    controller.urlImagesList.add(picture.path);
                },
              ),
            ],
          ),
          Observer(
            builder: (_) => Container(
              color: Colors.grey[200],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // print(
                      //     "Apertou na imagem ${controller.urlImagesList[index]}");
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            appBar: AppBar(
                              backgroundColor: Colors.black,
                              actions: [
                                IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      controller.urlImagesList.remove(
                                          controller.urlImagesList[index]);
                                      Navigator.pop(context);
                                    })
                              ],
                            ),
                            backgroundColor: Colors.black,
                            body: Center(
                              child: Image.asset(
                                "${controller.urlImagesList[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      "${controller.urlImagesList[index]}",
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemCount: controller.urlImagesList.length,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonCustom(
            title: "Proximo",
            onPressed: () {
              // Modular.to.showDialog(child: SnackBar(content: Text("data")));

              // vai para a tela de confimação de cadastro
              Modular.to.showDialog(child: Center(child: CircularProgressIndicator()));
          
            },
          )
        ],
      ),
    );
  }
}
