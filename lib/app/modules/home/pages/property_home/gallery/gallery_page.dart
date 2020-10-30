import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/pages/property_home/property_home_controller.dart';
import 'package:procurap/app/shared/models/imagem_model.dart';
import 'gallery_controller.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends ModularState<GalleryPage, GalleryController> {
  //use 'controller' variable to access controller

  final propertyHomeController = Modular.get<PropertyHomeController>();
  int _id;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._id = propertyHomeController.imovelModel.id;
    controller.findAllId(this._id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Imagens"),
      ),
      backgroundColor: Colors.black,
      body: Observer(
        builder: (_) {
          if (controller.imagens.error != null) {
            return Center(
              child: FlatButton(
                onPressed: () {},
                child: Text("Erro ao carregar"),
              ),
            );
          }

          if (controller.imagens.value == null) {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (controller.imagens.value.length == 0) {
            return Center(
              child: Text("Sem imagens"),
            );
          }
          // if (controller.imovelModels.value == null ||
          //   controller.tipoAnuncios.value == null ||
          //   controller.tipoImoveis.value == null ||
          //   controller.tipoHospedagens == null ||
          //   controller.imagens.value == null ||
          //   controller.enderecos == null) {
          // return Center(
          //   child: CircularProgressIndicator(),
          // );
          // }
          List<ImagemModel> imgs = List<ImagemModel>();

          for (ImagemModel img in controller.imagens.value) {
            if (img.imovel == _id) imgs.add(img);
          }

          return ListView.builder(
            itemCount: imgs.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (b) => Scaffold(
                                  appBar: AppBar(
                                    backgroundColor: Colors.black,
                                  ),
                                  backgroundColor: Colors.black,
                                  body: Container(
                                    child: Center(
                                      child: Image.network(imgs[index].url),
                                    ),
                                  ),
                                )));
                  },
                  child: Container(
                    child: Image.network(imgs[index].url),
                  ));

              // Container(
              //   height: MediaQuery.of(context).size.height / 3,
              //   width: MediaQuery.of(context).size.width,
              //   child: Image.network(
              //     imgs[index].url,
              //     fit: BoxFit.cover,
              //   ),
              // );
            },
          );
        },
      ),
    );
  }
}
