import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../injection.dart';
import '../../logic/home/home_bloc.dart';
import '../core/failure_state.dart';
import '../core/loading_state.dart';
import '../widgets/filter_home.dart';
import '../widgets/food_slider.dart';
import '../widgets/nav_bar.dart';
import '../widgets/principal_food.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.sort_outlined,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => getIt<HomeBloc>()
          ..add(
            const HomeEvent.initialize(),
          ),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const LoadingState(),
              loadInProgress: () => const LoadingState(),
              failure: (failure) => FailureState(
                failure: failure,
                onTap: () {},
              ),
              success: (products) => SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(25),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delicious Salads',
                            style: TextStyle(
                              fontSize: 60.sp,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'We made fresh and Healthy food',
                            style: TextStyle(
                              fontSize: 30.sp,
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const FilterHome(),
                    PrincipalFood(
                      product: products.first,
                    ),
                    FoodSlider(
                      products: products.sublist(1),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
