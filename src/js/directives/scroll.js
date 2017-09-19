app.directive("scroll", ['$window', 'initialJSON', function ($window, initialJSON) {
  return function(scope) {
    let scrollHandler = function () {
      initialJSON.jquery.then(function () {
        if ($('#games').length && this.pageYOffset >= $('#games').outerHeight() - 2000) scope.cat.requestGames(18);
      });
    };

    angular.element($window).on('scroll', scrollHandler);

    scope.$on('$destroy', function () {
      angular.element($window).off('scroll', scrollHandler);
    });
  };
}]);
