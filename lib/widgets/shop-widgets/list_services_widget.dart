import 'package:flutter/material.dart';
import 'package:mvp_all/models/doc_model.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

class ListServicesWidget extends StatelessWidget {
  const ListServicesWidget({
    Key? key,
    required this.size,
    required this.titleColor,
    this.listDoc
  }) : super(key: key);

  final Size size;
  final Color titleColor;
  final Future<List<DocModel>>? listDoc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.4, 
      child: listDoc != null 
      ? FutureBuilder<List<DocModel>>(
        future: listDoc,
        builder:  (context, snapshot) {
          return _ListViewProducts(
            size: size, 
            titleColor: titleColor,
            listProducts: snapshot.data,
          );
        },
      )
      : _ListViewProducts(
            size: size, 
            titleColor: titleColor,
          ),
    );
  }
}

class _ListViewProducts extends StatelessWidget {
  const _ListViewProducts({
    Key? key,
    required this.size,
    required this.titleColor, 
    this.listProducts,
  }) : super(key: key);

  final Size size;
  final Color titleColor;
  final List<DocModel>? listProducts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
    separatorBuilder: (context, index)  {
      return const SizedBox(width: 10);
    },
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    primary: false,
    itemCount: listProducts!= null ? listProducts!.length : 4,
    itemBuilder: (context, index) {
      return SizedBox(
        width:  size.width * 0.45,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width:  size.width * 0.4,
                height: size.height * 0.25,
                child: Container( 
                  margin: const EdgeInsets.only(left: 10, top: 10),                         
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: listProducts != null
                  ? Image(image: NetworkImage(listProducts![index].urlImage))
                  : const Image(image: NetworkImage('https://media.istockphoto.com/vectors/cat-sits-in-a-box-with-a-404-sign-page-or-file-not-found-connection-vector-id1278808623?k=20&m=1278808623&s=612x612&w=0&h=tmzYgVK5yF-dtVvW81zz-Ebpeqd6EvD38KYGRjczuiw=')),
                ),
              ),
      
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( listProducts != null
                    ? listProducts![index].name
                    : 'NOT FOUND',
                      style: TextStyle(
                        color: titleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
                    Text(listProducts != null
                      ? listProducts![index].description
                      : 'NOT FOUND',
                      style: const TextStyle(
                        color: Color(0xFFCCCCCC),
                        fontSize: 14
                      ),
                    ),
      
                    const SizedBox(height: 10),
      
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text( listProducts != null
                            ? '\$${listProducts![index].price}'
                            : 'NOT FOUND',
                            style: const TextStyle(
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          const Text(
                            '10% Desc.',
                            style: TextStyle(
                              color: ColorsViews.textPink,
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
        );
  }
}
