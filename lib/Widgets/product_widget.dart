import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:probox_clone1/model/product_model.dart';

class PhotoModelWidget extends StatefulWidget {
  const PhotoModelWidget({super.key});

  @override
  State<PhotoModelWidget> createState() => _PhotoModelWidgetState();
}

class _PhotoModelWidgetState extends State<PhotoModelWidget> {
  final Dio dio = Dio();
  Future<Response> getdata() async {
    return await dio.get('https://api.probox.uz/api/v1/products');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: FutureBuilder(
          future: getdata(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              final Response response = snapshot.data as Response;
              final List<ProductModel> photos = (response.data as List)
                  .map((e) => ProductModel.fromJson(e))
                  .toList();
              return GridView.builder(
                itemCount: photos.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: const Color(0xffffffff),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child:
                            Text(photos[i].slug),


                        ),
                      ),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              );
            } else if(snapshot.connectionState==ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }else{
              return Text(snapshot.hasError.toString());
            }
          }),
    );
  }
}
