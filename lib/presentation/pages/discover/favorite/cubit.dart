import 'package:bloc/bloc.dart';

import 'state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteState().init());
}
