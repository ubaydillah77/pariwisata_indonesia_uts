// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;
  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/places/bromo.jpg",
    rating: 4.4,
    location: "Gunung Bromo",
  ),
  RecommendedPlaceModel(
    image: "assets/places/bajo.jpg",
    rating: 4.4,
    location: "Labuan Bajo",
  ),
  RecommendedPlaceModel(
    image: "assets/places/toba.jpg",
    rating: 4.4,
    location: "Danau Toba",
  ),
  RecommendedPlaceModel(
    image: "assets/places/monas.jpg",
    rating: 4.4,
    location: "Monas",
  ),
];
