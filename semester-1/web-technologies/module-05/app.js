var app = angular.module('myApp', ['ngRoute']);

app.config(function($routeProvider) {
  $routeProvider

  .when('/maps', {
    templateUrl : 'maps.html',
    controller  : 'HomeController'
  })

  .when('/videos', {
    templateUrl : 'videos.html',
    controller  : 'BlogController'
  })

  .when('/photos', {
    templateUrl : 'photos.html',
    controller  : 'AboutController'
  })

  .when('/home', {
    templateUrl : 'forecasts.html',
    controller  : 'ForecastController'
  })

  .otherwise({redirectTo: '/'});
});

app.controller('HomeController', function($scope) {
    $scope.message = 'Hello from Maps Page';
});
  
app.controller('BlogController', function($scope) {
    $scope.message = 'Hello from Videos Page';
});
  
app.controller('AboutController', function($scope) {
    $scope.message = 'Hello from Photos page';
});

app.controller('ForecastController', function($scope) {
    $scope.message = 'Hello from Forecasts page';
});