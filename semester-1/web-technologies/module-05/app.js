var app = angular.module('myApp', ['ngRoute']);

app.config(function($routeProvider) {
  $routeProvider

  .when('/maps', {
    templateUrl : 'maps.html',
    controller  : 'MapsController'
  })

  .when('/videos', {
    templateUrl : 'videos.html',
    controller  : 'VideosController'
  })

  .when('/photos', {
    templateUrl : 'photos.html',
    controller  : 'PhotosController'
  })

  .when('/home', {
    templateUrl : 'forecasts.html',
    controller  : 'ForecastController'
  })

  .otherwise({redirectTo: '/'});
});

app.controller('MapsController', function($scope) {
    $scope.message = 'Hello from Maps Page';
});
  
app.controller('VideosController', function($scope) {
    $scope.message = 'Hello from Videos Page';
});
  
app.controller('PhotosController', function($scope) {
    $scope.message = 'Hello from Photos page';
});

app.controller('ForecastController', function($scope) {
    $scope.message = 'Hello from Forecasts page';
});