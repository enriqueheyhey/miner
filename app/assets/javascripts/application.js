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

appControllers.controller('MainController', ['$rootScope', '$scope', '$location', '$timeout', '$http', '$location', '$anchorScroll', function($rootScope, $scope, $location, $timeout, $http, $location, $anchorScroll) {
  

  $scope.scrollTo = function(id) {
    $anchorScroll(id);
  }

  $scope.clearCart = function() {
    localStorage.clear();
  }

  $scope.getCart = function() {
    if (localStorage.getItem('cart') == null) {
      $scope.cart = [];
    } else {
      $scope.cart = JSON.parse(localStorage.getItem('cart'));
    }
  }

  $scope.addItem = function(id) {
    $scope.getCart();
    $scope.cart.push(id);
    localStorage.setItem('cart', JSON.stringify($scope.cart));
  }

  $scope.removeItem = function(id) {
    $scope.getCart();
    var index = $scope.cart.indexOf(id);
    $scope.cart.splice(index, 1);
    localStorage.setItem('cart', JSON.stringify($scope.cart));
  }

  $scope.itemInCart = function(id) {
    $scope.getCart();

    for (var i = $scope.cart.length - 1; i >= 0; i--) {
      if ($scope.cart[i] == id) {
        return true;
      }
    };
  }

}]);

/*appControllers.controller('LineCtrl', ['$scope', function($scope) {
  
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
  }]);*/