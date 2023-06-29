class WallpaperModel{
   String? photographer;
   String? photographerUrl;
   int? photographerId;
   SrcModel? src;

  WallpaperModel({this.src, this.photographerUrl,
    this.photographerId,  this.photographer});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
      src: SrcModel.fromMap(jsonData["src"]),
      photographerUrl: jsonData["photographerUrl"],
      photographerId: jsonData["photographerId"],
      photographer: jsonData["photographer"],
    );
  }

}

class SrcModel{
  String? original;
  String? small;
  String? portrait;

  SrcModel({ this.portrait = "https://images.pexels.com/photos/2880507/pexels-photo-2880507.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",  this.original,  this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jasonData){
    return SrcModel(
        portrait: jasonData["portrait"],
        original: jasonData["original"],
        small: jasonData["small"]
    );
  }
}