class DtoImageCarousel {
    DtoImageCarousel({
      required this.url,
      required this.accion,
      required this.nombre,
    });

    String url;
    String accion;
    String nombre;

    factory DtoImageCarousel.fromjson(Map<String, dynamic> json) => DtoImageCarousel(
        url: json["url"],
        accion: json["accion"],
        nombre: json["nombre"],
    );

}