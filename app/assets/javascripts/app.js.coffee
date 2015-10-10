renieApp = angular.module('renieApp', [
  'ui.router'
])

renieApp.config [
  '$stateProvider'
  '$urlRouterProvider'
  '$locationProvider'
  ($stateProvider, $urlRouterProvider, $locationProvider) ->

    $locationProvider.html5Mode true
#    $urlRouterProvider.otherwise('/')

    $stateProvider
    .state('content',
      url: '/'
      templateUrl: '/templates/content/index.html.haml'
      controller: 'ContentController'
    )
    .state('show',
      url: '/show'
      templateUrl: '/templates/content/show.html.haml'
    )

]