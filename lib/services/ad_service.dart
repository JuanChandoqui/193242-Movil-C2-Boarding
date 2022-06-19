import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mvp_all/models/doc_model.dart';
import 'package:mvp_all/models/dtoImageCarousel.dart';
import 'package:mvp_all/models/pet_taxonomia_model.dart';


Future <List<DtoImageCarousel>> getCarouselAdvert() async {
  final List<DtoImageCarousel> listImage = [];

  final response = await http.post(
    Uri.parse('http://desarrollovan-tis.dedyn.io:4030/GetImagesCarousel'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, int>{
      'idChannel' :  1,
    }),
  );

  if(response.statusCode == 200){
    var decode = jsonDecode(response.body);
    final jsonDtoImage = decode['dtoImageCarousels'] as List;

    for (var item in jsonDtoImage) {
      listImage.add(DtoImageCarousel.fromjson(item));
    }
    return listImage;
    
  } else {
    throw Exception('not create DTO Image Carousel');
  }
}


Future <List<Pet>> getPetTaxonomia() async {
  final List<DtoPetTaxonomy> listDtoPetTaxonomy = [];
  final List<Pet> listPet = [];

  final response = await http.post(
    Uri.parse('http://desarrollovan-tis.dedyn.io:4030/GetPetTaxonomia'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, int>{
      'idChannel' :  1,
    }),
  );

  if(response.statusCode == 200){
    var decode = jsonDecode(response.body);
    final jsonDtoImage = decode['dtoPetTaxonomies'] as List;
    for (var item in jsonDtoImage) {
      listDtoPetTaxonomy.add(DtoPetTaxonomy.fromMap(item));
    }

    for (var item in listDtoPetTaxonomy) {
      item.pet.forEach((element) { 
        listPet.add(element);
      });
    }

    return listPet;
    
  } else {
    throw Exception('not create Pet Taxonomia');
  }
}


Future <List<DocModel>> getProductDocs() async {
  final List<DocModel> listProduct = [];

  final response = await http.post(
    Uri.parse('http://desarrollovan-tis.dedyn.io:4030/GetProductsByIdSeller'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, int>{
      'idSeller' :  1,
    }),
  );

  if(response.statusCode == 200){
    var decode = jsonDecode(response.body);
    final jsonDtoImage = decode['getProducts']['response']['docs'] as List;

    for (var item in jsonDtoImage) {
      listProduct.add(DocModel.fromJson(item));
    }
    return listProduct;
    
  } else {
    throw Exception('not create Docs');
  }
}
