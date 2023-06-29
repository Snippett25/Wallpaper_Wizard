import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  final String imgUrl;
  const ImageView({super.key, required this.imgUrl});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  var filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Hero(
          tag: widget.imgUrl,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(widget.imgUrl, fit: BoxFit.cover,)),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.bottomCenter ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                 // _save();
                  Navigator.pop(context);
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: const Color(0xff1C1B1B).withOpacity(0.8),
                        ),
                        width: MediaQuery.of(context).size.width/2,

                    ),

                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/2 ,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54, width: 1),
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: const LinearGradient(
                              colors: [
                                Color(0x36FFFFFF),
                                Color(0x0FFFFFFF)
                              ]
                          )
                      ),
                      child:const Column(children: <Widget>[
                        Text("SET WALLPAPER",style: TextStyle(
                          fontSize: 16, color: Colors.white70,
                        )),
                        Text("image will be saved in gallery", style: TextStyle(
                          fontSize: 10, color: Colors.white70,
                        ),),
                      ],) ,
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 16,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: const Text("Cancel", style: TextStyle(color: Colors.white),)),
              const SizedBox(height: 50,)
          ],),
        )

      ],),

    );
  }
}
// _save() async {
//   await _askPermission();
//   var response = await Dio().get(widget.imgUrl,
//       options: Options(responseType: ResponseType.bytes));
//   final result =
//   await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
//   print(result);
//   Navigator.pop(context);
// }
//
// _askPermission() async {
//   if (Platform.isIOS) {
//     /*Map<PermissionGroup, PermissionStatus> permissions =
//           */await PermissionHandler()
//         .requestPermissions([PermissionGroup.photos]);
//   } else {
//     /* PermissionStatus permission = */await PermissionHandler()
//         .checkPermissionStatus(PermissionGroup.storage);
//   }
// }
