class HomeModel
{
  int? id;
  dynamic price;
  String? title,description,category,image;
  RatingModel? ratingModel;

  HomeModel(
      {this.id,
      this.price,
      this.title,
      this.description,
      this.category,
      this.image,
      this.ratingModel});
  
  factory HomeModel.mapToModel(Map m1)
  {
    return HomeModel(
      id: m1['id'],
      description: m1['description'],
      title: m1['title'],
      image: m1['image'],
      category: m1['category'],
      price: m1['price'],
      ratingModel: RatingModel.mapToModel(m1['rating']),
    );
  }
}

class RatingModel
{
  dynamic rate;
  int? count;

  RatingModel({this.rate, this.count});
  
  factory RatingModel.mapToModel(Map m1)
  {
    return RatingModel(
      count: m1['count'],
      rate: m1['rate'],
    );
  }
}