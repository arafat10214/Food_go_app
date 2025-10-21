import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier {
 ///=========favourite id cheak in this set colletions=====///
  final Set<String> _favoriteItemIds = {};

  // each container isn't favourite///
  bool isFavorite(String id) {
    return _favoriteItemIds.contains(id);
  }

  void toggleFavorite(String id) {
    if (_favoriteItemIds.contains(id)) {
      _favoriteItemIds.remove(id); /// jodi favourite hoi
    } else {
      _favoriteItemIds.add(id); /// jodi favourite na hoi
    }
    notifyListeners();
  }
}