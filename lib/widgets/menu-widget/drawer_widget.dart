import 'package:flutter/material.dart';

import '../../styles/Colors/ColorsView.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
        elevation: 0,
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: ColorsViews.textBoarding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage('https://assets.materialup.com/uploads/5b045613-638c-41d9-9b7c-5f6c82926c6e/preview.png')
                  ),

                  SizedBox(height: 15),

                  Center(
                    child: Text('Juan Chandoqui', style: TextStyle(color: ColorsViews.colorWhiteGeneral),)
                  )
                ],
              )
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const [
                   _ExpansionTile(
                    textMenu: 'MENU 1', 
                    textSubMenu1: 'Opcion 1', 
                    textSubMenu2: 'Opcion 2', 
                    textSubMenu3: 'Opcion 3'
                  ),
            
                   _ExpansionTile(
                    textMenu: 'MENU 2', 
                    textSubMenu1: 'Opcion 1', 
                    textSubMenu2: 'Opcion 2', 
                    textSubMenu3: 'Opcion 3'
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => {}, 
                    child: SizedBox(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.exit_to_app),
                          Text('Salir')
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: ColorsViews.textBoarding
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ExpansionTile extends StatelessWidget {
  final String textMenu;
  final String textSubMenu1;
  final String textSubMenu2;
  final String textSubMenu3;

  const _ExpansionTile({
    Key? key,
    required this.textMenu, 
    required this.textSubMenu1, 
    required this.textSubMenu2, 
    required this.textSubMenu3
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(textMenu),
      children: [
        TextButton(
          style: const ButtonStyle(),
          child: Text(textSubMenu1),
          onPressed: () => {}, 
        ),

        TextButton(
          child: Text(textSubMenu2),
          onPressed: () => {}, 
        ),

        TextButton(
          child: Text(textSubMenu3),
          onPressed: () => {}, 
        )       
      ],
    );
  }
}