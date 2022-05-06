import 'package:flutter/cupertino.dart';
// import 'package:login_sharedprefernece/providers/user_datatype.dart';
 class UserProvider extends ChangeNotifier {
//    String? name;
//    String? url;
//
// UserProvider({this.name,this.url});

   final List _dummyData=[
  {
    "name": 'a',
    "url":
    "https://media.istockphoto.com/photos/75mpix-panorama-of-beautiful-mount-ama-dablam-in-himalayas-nepal-picture-id1341288649?s=612x612"
  },
  {
    "name": 'b',
    "url":
    'https://media.istockphoto.com/photos/wild-grass-in-the-mountains-at-sunset-picture-id1322277517?s=612x612'
  },
  {
    "name": 'c',
    "url":
    'https://media.istockphoto.com/photos/snowy-peaks-of-the-caucasus-mountains-picture-id1327243304?s=612x612'
  },
  {
    "name": 'd',
    "url":
    'https://media.istockphoto.com/photos/morning-fog-over-a-beautiful-lake-surrounded-by-pine-forest-stock-picture-id1306075353?s=612x612'
  },
  {
    "name": 'e',
    "url":
    'https://media.istockphoto.com/photos/aerial-view-of-lake-tahoe-shoreline-with-mountains-and-turquoise-blue-picture-id1302742624?s=612x612'
  },
  {
    "name": 'f',
    "url":
    'https://media.istockphoto.com/photos/milky-way-over-snowy-mountains-and-lake-at-night-landscape-with-snow-picture-id1328564799?s=612x612'
  },
  {
    "name": 'g',
    "url":
    'https://media.istockphoto.com/photos/milky-way-over-snowy-mountains-and-lake-at-night-landscape-with-snow-picture-id1328564799?s=612x612'
  },
  {
    "name": 'h',
    "url":
    'https://media.istockphoto.com/photos/brecon-beacons-landscape-picture-id1308867983?s=612x612'
  },
  {
    "name": 'i',
    "url":
    'https://media.istockphoto.com/photos/various-views-of-guru-shikhar-mt-abu-picture-id1303025227?s=612x612'
  },
  {
    "name": 'j',
    "url":
    'https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
  },
  {
    "name": 'k',
    "url":
    "https://images.unsplash.com/photo-1504870712357-65ea720d6078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"
  },
];

 List get getUser => List.unmodifiable(_dummyData);


 void deleteItem(int i){
   _dummyData.removeAt(i);

 }


}