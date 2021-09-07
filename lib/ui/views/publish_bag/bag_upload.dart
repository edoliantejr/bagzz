import 'dart:io';

import 'package:bagzz/constant/font_names.dart';
import 'package:bagzz/ui/views/publish_bag/bag_upload_view_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BagUpload extends StatelessWidget {
  const BagUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BagUploadViewModel>.reactive(
      viewModelBuilder: () => BagUploadViewModel(),
      builder: (context, model, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: FontNames.workSans,
            accentColor: Colors.white,
          ),
          home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                'Upload A Product',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: FontNames.workSans,
                ),
              ),
              backgroundColor: Colors.grey[50],
              elevation: 0,
            ),
            body: Container(
              color: Colors.grey[100],
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: model.selectedImage != null
                                        ? Colors.grey
                                        : Colors.transparent,
                                  ),
                                ),
                                child: model.selectedImage != null
                                    ? Image.file(
                                        File(model.selectedImage!.path),
                                        fit: BoxFit.cover,
                                        height: 150,
                                        width: 150,
                                      )
                                    : Container(),
                              ),
                              model.selectedImage != null
                                  ? Positioned(
                                      top: 0,
                                      right: 0,
                                      child: InkWell(
                                        onTap: model.clearImageSelection,
                                        child: Container(
                                          color: Colors.grey,
                                          height: 18,
                                          width: 18,
                                          child: Icon(
                                            Icons.close_outlined,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                          SizedBox(width: model.selectedImage != null ? 10 : 0),
                          DottedBorder(
                            strokeWidth: 1,
                            color: Colors.orange,
                            dashPattern: [3],
                            child: Container(
                              width: 95,
                              height: 90,
                              child: TextButton(
                                onPressed: model.selectImage,
                                child: FittedBox(
                                  child: Text(
                                    model.selectedImage == null
                                        ? '+ Add photo'
                                        : 'Change Photo',
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  primary: Colors.deepOrange,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //product name
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Product Name',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                TextField(
                                  controller: model.prodName,
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(height: 1.5),
                                  decoration: InputDecoration(
                                    hintText: 'Not Set',
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 8),

                          //category
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white,
                            height: 55,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.menu_rounded,
                                      size: 25,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Category',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: TextField(
                                    controller: model.category,
                                    maxLines: 1,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(height: 1.5),
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: 'Not Set',
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 1),

                          //brand
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.sell_outlined,
                                      size: 25,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Brand',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: TextField(
                                    controller: model.brand,
                                    textInputAction: TextInputAction.next,
                                    maxLines: 1,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(height: 1.5),
                                    decoration: InputDecoration(
                                      hintText: 'Not Set',
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 1),

                          //style
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.style_outlined,
                                      size: 25,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Style',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: TextField(
                                    controller: model.style,
                                    textInputAction: TextInputAction.next,
                                    maxLines: 1,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(height: 1.5),
                                    decoration: InputDecoration(
                                      hintText: 'Not Set',
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 1),

                          //price
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on_outlined,
                                      size: 25,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Price',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: TextField(
                                    controller: model.price,
                                    maxLines: 1,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(height: 1.5),
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: 'Not Set',
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 1),

                          //Stocks
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.white,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.show_chart,
                                      size: 25,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Stock',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: TextField(
                                    controller: model.stock,
                                    textInputAction: TextInputAction.next,
                                    maxLines: 1,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(height: 1.5),
                                    decoration: InputDecoration(
                                      hintText: 'Not Set',
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 8),

                          //product description
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(8),
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Description',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                TextField(
                                  controller: model.desc,
                                  textInputAction: TextInputAction.next,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: 'Not Set',
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 8),

                          //product shipInfo
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(8),
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Shipping Info',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                TextField(
                                  controller: model.shipInfo,
                                  textInputAction: TextInputAction.next,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: 'Not Set',
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 8),

                          //product PayInfo
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(8),
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Payment Info',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      '*',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  ],
                                ),
                                TextField(
                                  controller: model.payInfo,
                                  textInputAction: TextInputAction.done,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: 'Not Set',
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            //persistent footer to place cancel and publish button
            persistentFooterButtons: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Cancel'),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.grey,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: OutlinedButton(
                      onPressed: model.publishBag,
                      child: Text('Publish'),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          primary: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
