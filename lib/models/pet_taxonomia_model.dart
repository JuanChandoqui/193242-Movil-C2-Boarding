import 'dart:convert';

class DtoPetTaxonomy {
    DtoPetTaxonomy({
      required this.pet,
    });

    List<Pet> pet;

    factory DtoPetTaxonomy.fromMap(Map<String, dynamic> json) => DtoPetTaxonomy(
        pet: List<Pet>.from(json["pet"].map((x) => Pet.fromMap(x))),
    );

}

class Pet {
    Pet({
    required this.pet,
    required this.detallePets,
    });

    String pet;
    List<DetallePet> detallePets;

    factory Pet.fromJson(String str) => Pet.fromMap(json.decode(str));

    factory Pet.fromMap(Map<String, dynamic> json) => Pet(
        pet: json["pet"],
        detallePets: List<DetallePet>.from(json["detallePets"].map((x) => DetallePet.fromMap(x))),
    );
}

class DetallePet {
    DetallePet({
    required this.item,
    });

    String item;

    factory DetallePet.fromJson(String str) => DetallePet.fromMap(json.decode(str));

    factory DetallePet.fromMap(Map<String, dynamic> json) => DetallePet(
        item: json["item"],
    );
}
