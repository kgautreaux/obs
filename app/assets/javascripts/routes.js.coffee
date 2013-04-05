obsApp = angular.module("Obs", ['ngCookies', 'ngResource'], ($routeProvider, $locationProvider) ->
  $routeProvider.when("/obs",
      controller: 'ObsController',
      template: '<p>Fucking works</p>'
  )
)

obsApp.controller('ObsController', ($scope) ->
  $scope.name = "World"
)
