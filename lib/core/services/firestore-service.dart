import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  Future<String> getCollectionByName(String collection) async {
    var collectionItems;
    String artistsIds = "";

    await Firestore.instance
        .collection(collection)
        .getDocuments()
        .then((value) {
      collectionItems = value;

      for (var item in collectionItems.documents) {
        artistsIds += item.data["id"] + ",";
      }
    });

    return Future.value(artistsIds.substring(0, artistsIds.length - 1));
  }

  Future addNewDocument(String id) async {
    return await Firestore.instance
        .collection('artistas')
        .document()
        .setData({'id': '$id'});
  }
}
