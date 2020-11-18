import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/home/modules/property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class PhotosPage extends StatefulWidget {
  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  final controller = Modular.get<PropertyController>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        controller.urlImagesList = ObservableList<String>();
        Modular.to.pop();
      },
      child: Scaffold(
        appBar: appBarCutom(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            ListTile(
              // contentPadding: EdgeInsets.all(0),
              title: Text(
                "Imagens",
                style: TextStyle(
                    fontSize: 17,
                    // color: Colors.grey[800],
                    fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(
                children: [
                  FlatButton.icon(
                    icon: Icon(
                      Icons.photo_library,
                      // color: Colors.grey,
                    ),
                    label: Text("Galeria"),
                    onPressed: () async {
                      try {
                        // ignore: invalid_use_of_visible_for_testing_member
                        final gallery = await ImagePicker.platform.pickImage(
                          source: ImageSource.gallery,
                        );

                        if (gallery.path != null)
                          await controller.addUrlImage(gallery.path);
                      } catch (e) {
                        return;
                      }

                      // print("CAMINHO DA IMAGEMS >>> ${gallery.path}");
                    },
                  ),
                  FlatButton.icon(
                    icon: Icon(
                      Icons.camera_alt,
                    ),
                    label: Text("Câmera"),
                    onPressed: () async {
                      try {
                        // ignore: invalid_use_of_visible_for_testing_member
                        final picture = await ImagePicker.platform.pickImage(
                          source: ImageSource.camera,
                        );
                        if (picture.path != null)
                          await controller.addUrlImage(picture.path);
                      } catch (e) {
                        return;
                      }
                    },
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) => Container(
                
                // color: Colors.grey[200],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 175,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
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
                                    },
                                  )
                                ],
                              ),
                              backgroundColor: Colors.black,
                              body: Center(
                                child: Container(
                                  child: Image.asset(
                                    "${controller.urlImagesList[index]}",
                                    fit: BoxFit.cover,
                                  ),
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
          ],
        )),
        floatingActionButton: Observer(
          builder: (_) => ButtonCustom(
            radius: 0,
            title: "Próximo",
            onPressed: controller.urlImagesList.isNotEmpty
                ? () {
                    Modular.to.pushNamed("/home/details_crud");
                  }
                : null,
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}
