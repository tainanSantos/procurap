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
                "Adcionar imagens",
                style: TextStyle(
                    fontSize: 17,
                    color: CustomColor.primary,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.photo_library,
                        color: Colors.grey,
                      ),
                      onPressed: () async {
                        var gallery = await ImagePicker.platform.pickImage(
                          source: ImageSource.gallery,
                        );

                        if (gallery != null) if (gallery.path != null)
                          controller.addUrlImage(gallery.path);
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
                      if (picture != null) if (picture.path != null)
                        controller.addUrlImage(picture.path);
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
                      crossAxisCount: 2),
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
