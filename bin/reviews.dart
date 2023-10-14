class Review{
  String reviewID;
  String customerID;
  String reviewContent;
  int rating;
  String productID;

  Review({
    required this.reviewID,
    required this.customerID,
    required this.reviewContent,
    required this.rating,
    required this.productID,
  });
  @override
  String toString() {
    return '''
      Review Content: $reviewContent
      Customer ID: $customerID
      Review Content: $reviewContent
      Rating: $rating
      ProductID: $productID 
    ''';
  }
}
class ReviewMethods {
  List<Review> reviews = [];
  void addReview(Review review) {
    reviews.add(review);
  }

  void deleteReview(int index) {
    if (index >= 0 && index < reviews.length) {
      reviews.removeAt(index);
      print("Review deleted successfully.");
    } else {
      print("Invalid review index.");
    }
  }

}