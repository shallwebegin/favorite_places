import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProviderNotifier extends StateNotifier<List<Place>> {
  UserProviderNotifier() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserProviderNotifier, List<Place>>(
        (ref) => UserProviderNotifier());
