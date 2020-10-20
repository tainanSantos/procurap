import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
import 'package:procurap/app/modules/home/modules/property/components/components.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro Usuário"),
        backgroundColor: CustomColor.primary,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            textField(
                labelText: "Nome",
                // icon: Icons.person,
                helperText: "Informe seu Nome Completo",
                hintText: "Nome Completo"),
            textField(
                labelText: "E-mail",
                // icon: Icons.email,
                helperText: "Iforme seu melhor E-mail",
                hintText: "xxxxxx@gmail.com"),
            textField(
                labelText: "Senha",
                // icon: Icons.vpn_key,
                helperText: "A senha deve ter no mínimo 8 caracteres.",
                hintText: "********"),
            textField(
                labelText: "Repetir Senha",
                // icon: Icons.vpn_key,
                helperText: "As senhas devem ser iguais.",
                hintText: "********"),
            SizedBox(
              height: 10,
            ),
            dropDownButtonField_(
                list: [
                  "Corretor de Imóveis",
                  "Proprietário de Imóveis",
                ],
                onChanged: controller.setCheck,
                labelText: "Delaclaro que Sou",
                helperText: "Selecione a opção de acordo com seu perfil"),

            // Observer(
            //   builder: (_) => CheckboxListTile(
            //     value: controller.validatIsOwner ?? false,
            //     onChanged: controller.setIsOwner,
            //     title: Text("Proprietário"),
            //     subtitle: Text(
            //       "Sou Proprietário do Imóvel que quero divulgar.",
            //     ),
            //   ),
            // ),
            // Observer(
            //   builder: (_) => CheckboxListTile(
            //     value: controller.validatIsRealtor ?? false,
            //     onChanged: controller.setIsRealtor,
            //     title: Text("Corretor de Imóveis"),
            //     subtitle: Text(
            //       "Sou Corretor de Imóveis.",
            //     ),
            //   ),
            // ),
            Observer(
              builder: (_) => controller.validatIsOwner ?? false
                  ? textField(
                    keyboardType: TextInputType.number,
                      labelText: "CPF",
                      helperText: "Infome seu CPF.",
                      hintText: "000.000.000-00",
                      inputFormatters: controller.maskCpf
                    )
                  : Container(),
            ),
            Observer(
              builder: (_) => controller.validatIsRealtor ?? false
                  ? _textField(
                      labelText: "CRM",
                      helperText: "Infome seu CRM.",
                      hintText: "000.000.000",
                    )
                  : Container(),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonCustom(
              title: "Cadastrar-se",
              onPressed: () {
                Modular.to.pop();
                Modular.to.pushReplacementNamed("/home");
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _textField(
      {String labelText, IconData icon, String helperText, String hintText}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: TextField(
        decoration: InputDecoration(
            labelText: labelText,
            // prefixIcon: Icon(icon),
            helperText: helperText,
            hintText: hintText),
      ),
    );
  }
}
