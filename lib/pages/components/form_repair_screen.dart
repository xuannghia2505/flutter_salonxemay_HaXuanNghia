import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qlsuabanxe/theme/colors.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:image_picker/image_picker.dart';

class FormRepairScreen extends StatefulWidget {
  const FormRepairScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormRepairScreenState();
  }
}

class FormRepairScreenState extends State<FormRepairScreen> {
  String _name;
  String _phone;
  String _plate;
  String _bikeName;
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: _imageFile == null
              ? NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkS5nWu-lMTmI32YqpTWByhpvz6aIP57p_tOyhjHe4spI0FYoatLrcvRcqLKHNSJ_VNME&usqp=CAU")
              : FileImage(File(_imageFile.path)),
        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Họ tên'),
      maxLength: 50,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phải nhập họ tên khách hàng';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildPhone() {
    return TextFormField(
      keyboardType: TextInputType.number,
      maxLength: 10,
      decoration: InputDecoration(labelText: 'Số điện thoại'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phải nhập số điện thoại khách hàng';
        }

        return null;
      },
      onSaved: (String value) {
        _phone = value;
      },
    );
  }

  Widget _buildPlate() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Biển số xe'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phải nhập biển số xe khách hàng';
        }

        return null;
      },
      onSaved: (String value) {
        _plate = value;
      },
    );
  }

  Widget _buildBikeName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Tên xe'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phải nhập tên xe khách hàng';
        }

        return null;
      },
      onSaved: (String value) {
        _bikeName = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        backgroundColor: white,
        iconTheme: IconThemeData(color: black),
        title: Text(
          "Tạo đơn sửa xe",
          style: TextStyle(color: black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                imageProfile(),
                _buildName(),
                _buildPhone(),
                _buildPlate(),
                _buildBikeName(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_name);
                    print(_phone);
                    print(_plate);
                    print(_bikeName);

                    Flushbar(
                      flushbarPosition: FlushbarPosition.TOP,
                      duration: Duration(seconds: 1),
                      leftBarIndicatorColor: Colors.blue[300],
                      message: "Đã tạo đơn sửa xe thành công",
                      icon: Icon(
                        Icons.info_outline,
                        size: 28.0,
                        color: Colors.blue[300],
                      ),
                      backgroundGradient:
                          LinearGradient(colors: [Colors.blue, Colors.teal]),
                      backgroundColor: Colors.red,
                      boxShadows: [
                        BoxShadow(
                          color: Colors.blue[800],
                          offset: Offset(0.0, 2.0),
                          blurRadius: 3.0,
                        )
                      ],
                    )..show(context);
                    // return Navigator.of(context).pop();
                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
