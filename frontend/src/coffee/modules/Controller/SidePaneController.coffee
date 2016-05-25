app.controller "SidePaneController", ($scope, $http, $timeout, $rootScope) ->
    $rootScope.currentEmail = {}
    $http({method: 'GET', url: 'http://localhost:8100/latest'})
    .success (data, status, headers, config) ->
        $timeout ->
            $scope.mails = data
            $rootScope.currentEmail = data[0]

    $scope.selectEmail = (email)->
        $rootScope.currentEmail = email
