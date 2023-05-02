
import 'package:booking/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../../../../config/theme/app_color.dart';
import 'component/detail_button.dart';
import 'component/detail_image.dart';
import 'component/detail_title.dart';
import 'cubit.dart';
import 'state.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DetailCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DetailCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.ink06,
      body: Column(
        children: [
          const DetailImage(),
          const DetailTitle(),
          16.0.height,
          const DetailButton(),
        ],
      ),
    );
  }
}
