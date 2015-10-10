renieApp = angular.module('renieApp')

renieApp.controller 'ContentController', [ '$scope', ($scope) ->
  $scope.data = 'From controller'
]