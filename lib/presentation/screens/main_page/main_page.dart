import 'package:flutter/material.dart';
import 'package:test_task/core/models/image_model.dart';
import 'package:test_task/core/services/image_api_service.dart';
import 'package:test_task/presentation/custom_widgets/image_card.dart';
import 'package:test_task/presentation/screens/detail_page/detail_page.dart';
import 'package:test_task/presentation/theme/app_colors.dart';
import 'package:test_task/presentation/theme/app_styles.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.rose,
        appBar: AppBar(
          backgroundColor: AppColors.bali,
          title: Text(
            "Test Task",
            style: AppStyles.regular,
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<ImageModel>?>(
          future: ImageApiService().fetchImages(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data!.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return CardImage(
                      link: snapshot.data!
                          .elementAt(index)
                          .urls!
                          .regular!
                          .toString(),
                      description: snapshot.data!
                              .elementAt(index)
                              .description
                              ?.toString() ??
                          'No description',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullImagePage(
                                      link: snapshot.data!
                                          .elementAt(index)
                                          .urls!
                                          .regular!
                                          .toString(),
                                    )));
                      },
                    );
                  });
            }
          },
        ));
  }
}
