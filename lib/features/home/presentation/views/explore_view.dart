import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/categories_grid_view.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/search_component.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/search_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<HomeManager>(builder: (context, manager, child) {
      return Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 50),
          child: Column(
            children: [
              Text(
                'Find Products',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              SearchComponent(
                onChanged: (value) {
                  setState(() {
                    text = value;
                    manager.search(text: value);
                  });
                },
                text: text,
              ),
              text.isEmpty ? const CategoriesGridView() : const SearchGridView()
            ],
          ));
    }));
  }
}
