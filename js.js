var myApp = angular.module('App', []);
var newApp = angular.module('newApp', []);

//create the controller
myApp.controller('myController', function($scope){

    $scope.showTweet = function(){
        $scope.newTweet = $scope.myTweet;
    }
    $scope.showTweet();
});

newApp.controller('myController2', function($scope){
    $scope.showValues = function(){
        $scope.test = $scope.nameMy;
        console.log($scope.nameMy);
    }
    $scope.showValues();
});

newApp.controller('studentController', function($scope) {
    $scope.student = {
        firstName: "Student",
        lastName: "Zero",
        fullName: function() {
            var studentObject;
            studentObject = $scope.student;
            return studentObject.firstName + " " + studentObject.lastName;
        }
    };
});
