app.controller "MainPaneController", ($scope, $http, $timeout, $rootScope) ->
    $scope.currentItem = $rootScope.currentEmail
