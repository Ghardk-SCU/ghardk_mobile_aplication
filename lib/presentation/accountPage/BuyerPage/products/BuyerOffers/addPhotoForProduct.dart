import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Cubits/Product_cubit/product_cubit.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/addNewProductButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import '../../../../../core/api/end_ponits.dart';

class addPhotoForProduct extends StatefulWidget {
  const addPhotoForProduct({super.key});

  @override
  State<addPhotoForProduct> createState() => _addPhotoForProductState();
}

class _addPhotoForProductState extends State<addPhotoForProduct> {
  File? _image;
  List<XFile> PickedImages = [];
/*   Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final List<XFile> images = await _picker.pickMultiImage();
    if (images != null) PickedImages.addAll(images);
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: _image != null ? FileImage(_image!) : null,
                child: _image == null
                    ? Icon(
                        Icons.person,
                        size: 50,
                      )
                    : null,
              ),
              SizedBox(height: 20),
              SizedBox(height: 30),
              ConfimAddNewProductButton(
                child: Text('Upload Photo',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                ontap: () async {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
