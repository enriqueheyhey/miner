// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular.min.js
//= require angular-animate.min.js
//= require angular-aria.min.js
//= require angular-messages.min.js
//= require_tree .


var myApp = angular.module('myApp', [
  'appControllers', 'chart.js'
]);

var appControllers = angular.module('appControllers', ['ngAnimate']);

appControllers.controller('MainController', ['$rootScope', '$scope', '$timeout', '$http', function($rootScope, $scope, $timeout, $http) {
  
  $rootScope.purchasedMiner = function() {
    $timeout(function() {
      $rootScope.toggleConfirmation = true;
    }, 5000);
  };

  $http.get('https://api.coinmarketcap.com/v1/ticker/')
    .success(function(data) {
      $scope.coinValues = data;
  });

}]);

appControllers.controller('LineCtrl', ['$scope', function($scope) {
  
    $scope.labels = ["January", "February", "March", "April", "May", "June", "July"];
    $scope.series = ['Series A', 'Series B'];
    $scope.data = [
      [65, 59, 80, 81, 56, 55, 40],
      [28, 48, 40, 19, 86, 27, 90]
    ];
    $scope.onClick = function (points, evt) {
      console.log(points, evt);
    };
    $scope.datasetOverride = [{ yAxisID: 'y-axis-1' }, { yAxisID: 'y-axis-2' }];
    $scope.options = {
      scales: {
        yAxes: [
          {
            id: 'y-axis-1',
            type: 'linear',
            display: true,
            position: 'left'
          },
          {
            id: 'y-axis-2',
            type: 'linear',
            display: true,
            position: 'right'
          }
        ]
      }
    };
  }]);