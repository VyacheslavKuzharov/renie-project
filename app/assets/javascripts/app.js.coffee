renieApp = angular.module('renieApp', [
  'ui.router'
  'pascalprecht.translate'
])

renieApp.config [
  '$stateProvider'
  '$urlRouterProvider'
  '$locationProvider'
  '$translateProvider'
  ($stateProvider, $urlRouterProvider, $locationProvider, $translateProvider) ->

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

    $translateProvider.translations 'en',
      'LANGUAGE' : 'Language'
      'BUTTON_LANG_EN': 'English'
      'BUTTON_LANG_RU': 'Russian'
    $translateProvider.translations 'ru',
      'LANGUAGE' : 'Язык'
      'BUTTON_LANG_RU': 'Русский'
      'BUTTON_LANG_EN': 'Английский'
    $translateProvider.preferredLanguage 'ru'
    $translateProvider.useSanitizeValueStrategy 'escaped'

]