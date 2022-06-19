class DocModel{
    DocModel({
    required this.idSeller,
    required this.productStatus,
    required this.quantity,
    required this.urlImage,
    required this.idProduct,
    required this.description,
    required this.price,
    required this.sku,
    required this.name,
    });

    int idSeller;
    int productStatus;
    int quantity;
    String urlImage;
    int idProduct;
    String description;
    double price;
    String sku;
    String name;

    factory DocModel.fromJson(Map<String, dynamic> json) => DocModel(
        idSeller: json["idSeller"],
        productStatus: json["productStatus"],
        quantity: json["quantity"],
        urlImage: json["urlImage"],
        idProduct: json["idProduct"],
        description: json["description"],
        price: json["price"].toDouble(),
        sku: json["sku"],
        name: json["name"],
    );

}
