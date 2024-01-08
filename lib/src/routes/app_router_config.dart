import 'package:experiment_app/src/customer/customer_page.dart';
import 'package:experiment_app/src/home_page.dart';
import 'package:experiment_app/src/order/order_page.dart';
import 'package:experiment_app/src/product/product_page.dart';
import 'package:experiment_app/src/routes/app_route_constant.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final goRouter = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        name: AppRouteConstant.homeRouteName,
        path: '/',
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomePage(),
        ),
      ),
      GoRoute(
        path: '/customer',
        name: AppRouteConstant.customerRouteName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: CustomerPage(),
        ),
      ),
      GoRoute(
        path: '/order',
        name: AppRouteConstant.orderRouteName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: OrderPage(),
        ),
      ),
      GoRoute(
        path: '/product',
        name: AppRouteConstant.productRouteName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProductPage(),
        ),
      ),
    ],
  );

  //get current route
  static String get currentRoute =>
      goRouter.routerDelegate.currentConfiguration.fullPath;
}
