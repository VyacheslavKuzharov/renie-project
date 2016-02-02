renieApp = angular.module('renieApp')

renieApp.controller 'TranslateController', [ '$scope', '$translate', ($scope, $translate) ->

  $scope.changeLanguage = (key) ->
    $translate.use key
]