$(function() {
  $('.subnav ul.nav a').click(function(e) {
    e.preventDefault();
    $.scrollTo($(this).attr('href'), 1200, { offset: { top: -155, left: 0}});
  });
  
  $(".jumbotron .inner h1").fitText(1.2, { maxFontSize: '80px'});
  
});

function ContactCtrl($scope, $http) {
  $scope.success = false;
  $scope.httpError = false;
  
  $scope.send = function() {
    var job = { job: { klass: 'msg', args: [$scope.msg]}};
    $http.post('/contact',job).
      success(function(data){
        $scope.success = true;
        $scope.msg = {};
      }).
      error(function(data){
        $scope.httpError = true;
      });
  }
}