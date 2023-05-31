// ignore_for_file: public_member_api_docs, sort_constructors_first
class NearbyPlaceModel {
  final String image;
  final String name;
  NearbyPlaceModel({required this.image, required this.name});
}

List<NearbyPlaceModel> nearbyPlaces = [
  NearbyPlaceModel(image: "assets/places/bali.jpg", name: "Bali"),
  NearbyPlaceModel(image: "assets/places/bajo.jpg", name: "Labuan Bajo"),
  NearbyPlaceModel(image: "assets/places/bunaken.jpg", name: "Bunaken"),
  NearbyPlaceModel(image: "assets/places/monas.jpg", name: "Monas"),
  NearbyPlaceModel(image: "assets/places/toba.jpg", name: "Danau Toba"),
  NearbyPlaceModel(image: "assets/places/bromo.jpg", name: "Bromo"),
];
