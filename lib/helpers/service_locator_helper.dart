import 'package:get_it/get_it.dart';
import 'package:memstuff/helpers/call_helper.dart';

final GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerSingleton<CallHelper>(CallHelper());
}
