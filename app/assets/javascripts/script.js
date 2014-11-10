function PostsCtrlAjax($scope, $http) {
    $http({method: 'POST', url: 'http://localhost:3000/assets/post.json'}).success(function(data) {
        $scope.posts = data; // response data
    });
}

