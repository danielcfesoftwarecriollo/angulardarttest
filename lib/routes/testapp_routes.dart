part of testapp;

class TestappRouterInitializer {
  Router _router;

  TestappRouterInitializer();

  void call(Router router, views) {
    _router = router;
    views.configure({
      'home': ngRoute(
          path: '/home',
          view: 'partials/index.html',
          defaultRoute: true),
    });
  }
}
