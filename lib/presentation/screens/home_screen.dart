import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_academy_task2/core/constants/app_constant_string.dart';
import 'package:flutter_academy_task2/presentation/model/dummy_data.dart';
import 'package:flutter_academy_task2/presentation/model/product_model.dart';

import '../components/home_components/build_item.dart';

class HomeScreen extends StatelessWidget {
  int colorIndex=0;
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
         AppConstantString.homeAppBarTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).scaffoldBackgroundColor,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              cursorColor: Theme.of(context).primaryColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Store',
              ),

            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context,index) {
                  colorIndex++;
                  if(colorIndex >= colors.length) colorIndex = 0;
                  return BuildItem(model: products[index],color: colors[colorIndex],);
                },
                itemCount: products.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}


