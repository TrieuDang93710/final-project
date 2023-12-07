import 'package:flutter/material.dart';
import 'package:flutter_manager_sell_app/src/component/cate_flower.dart';

import '../../component/add_button.dart';
import '../../component/cate_accessories.dart';
import '../../component/cate_edible.dart';
import '../../component/cate_extract.dart';
import '../../component/cate_header.dart';
import '../../component/cate_vapes.dart';
import '../../controller/flower_controller.dart';
import '../../reponsitory/flower_repository.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // dependentcy ịnection
    var flowerController = FlowerController(FlowerRepository());

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: CategoryHeaderAppbar(),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 1,
              length: 5,
              child: Scaffold(
                appBar: const TabBar(
                  tabs: [
                    Text('Flowers'),
                    Text('Vapes'),
                    Text('Extracts'),
                    Text('Editbles'),
                    Text('Accessories'),
                  ],
                ),
                body: TabBarView(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      decoration: const BoxDecoration(
                          color: Color(0xFFE4E4E4),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height:
                                MediaQuery.of(context).size.height * 0.6 - 20,
                            child: FutureBuilder(
                              future: flowerController.fetchFlowerData(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                if (snapshot.hasError) {
                                  return const Center(
                                    child: Text('Error'),
                                  );
                                }
                                return ListView.builder(
                                  itemCount: snapshot.data?.length,
                                  itemBuilder: (context, index) {
                                    var flower = snapshot.data?[index];
                                    return CategoriesFlower(
                                      nameFlower: flower?.nameFlower,
                                      imageUrl: flower?.image,
                                      note: flower?.note,
                                      price: flower?.price,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AddButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      decoration: const BoxDecoration(
                          color: Color(0xFFE4E4E4),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height:
                                MediaQuery.of(context).size.height * 0.6 - 20,
                            child: ListView(
                              children: [
                                CategoriesVapes(),
                              ],
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AddButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      decoration: const BoxDecoration(
                          color: Color(0xFFE4E4E4),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height:
                                MediaQuery.of(context).size.height * 0.6 - 20,
                            child: ListView(
                              children: [
                                CategoriesExtracts(),
                              ],
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AddButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      decoration: const BoxDecoration(
                          color: Color(0xFFE4E4E4),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height:
                                MediaQuery.of(context).size.height * 0.6 - 20,
                            child: ListView(
                              children: [
                                CategoriesEdible(),
                              ],
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AddButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      decoration: const BoxDecoration(
                          color: Color(0xFFE4E4E4),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height:
                                MediaQuery.of(context).size.height * 0.6 - 20,
                            child: ListView(
                              children: [
                                CategoriesAccessories(),
                              ],
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AddButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
