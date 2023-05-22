import 'package:flutter/material.dart';

import 'package:flutter_app/controller/menu_controller.dart';
import 'package:flutter_app/view/main_menu/stepper.dart';

import 'package:provider/provider.dart';
import 'package:side_sheet/side_sheet.dart';
import 'package:flutter_app/controller/btn_add.dart';

class AnaMenu extends StatelessWidget {
  const AnaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainMenuController(),
      child: const AnaMenuContent(),
    );
  }
}

class AnaMenuContent extends StatefulWidget {
  const AnaMenuContent({super.key});

  @override
  State<AnaMenuContent> createState() => _AnaMenuContentState();
}

class _AnaMenuContentState extends State<AnaMenuContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, right: 10.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              color: const Color.fromARGB(255, 255, 255, 255),
              width: 1800,
              height: 50,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () => SideSheet.right(
                      context: context,
                      body: Container(
                        color: const Color.fromARGB(255, 65, 64, 64),
                        child: CustomStepper(
                          providerNoListen: Provider.of<MainMenuController>(
                              context,
                              listen: false),
                          parentContext: context,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    icon: const Icon(Icons.menu, size: 30),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: GridView.builder(
                    itemCount:
                        Provider.of<MainMenuController>(context).btnList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 5,
                      childAspectRatio: 5,
                    ),
                    itemBuilder: (context, index) {
                      AddButton btn = Provider.of<MainMenuController>(context)
                          .btnList[index];
                      return Container(
                        width: 500,
                        height: 110,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                width: 200,
                                height: 50,
                                color: const Color.fromARGB(255, 37, 70, 110),
                                child: btn,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Provider.of<MainMenuController>(context,
                                              listen: false)
                                          .setGlobalText(btn.text);
                                    },
                                    icon: const Icon(Icons.edit),
                                  ),
                                  /*

                                      IconButton(
                                        onPressed: () {
                                          SideSheet.right(
                                            context: context,
                                            body: CustomStepper(
                                              providerNoListen: Provider.of<MainMenuController>(context, listen: false),
                                              parentContext: context,
                                            ),
                                            width: MediaQuery.of(context).size.width * 0.3,
                                          );
                                        },
                                        icon: Icon(Icons.edit),
                                      ),

                                                                        */
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        (Provider.of<MainMenuController>(
                                                context,
                                                listen: false)
                                            .removeButton(btn));
                                      });
                                    },
                                    icon: const Icon(Icons.close),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

