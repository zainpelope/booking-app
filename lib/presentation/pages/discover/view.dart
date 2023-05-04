import 'package:booking/config/config.dart';
import 'package:booking/presentation/pages/discover/component/bottom_menu.dart';
import 'package:booking/presentation/pages/discover/favorite/view.dart';
import 'package:booking/presentation/pages/discover/settings/view.dart';
import 'package:booking/presentation/pages/discover/trips/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';
import 'state.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(
        builder: (context) => _buildPage(context),
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<DiscoverCubit, DiscoverState>(
              builder: (context, state) {
                return state.selectedIndex == 0
                    ? const TripsPage()
                    : state.selectedIndex == 1
                        ? const FavoritePage()
                        : const SettingsPage();
              },
            ),
          ),
          BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              return BottomMenu(
                cubit: cubit,
              );
            },
          ),
        ],
      ),
    );
  }
}
