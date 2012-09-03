$(function() {
  $('.subnav ul.nav a').click(function(e) {
    e.preventDefault();
    $.scrollTo($(this).attr('href'), 1200, { offset: { top: -155, left: 0}});
  });
});

function ContactCtrl($scope, $http) {
  $scope.send = function() {
    var job = { klass: 'msg', args: [$scope.msg]};
    // $http.post('http://codecamp:rocks@chscodes.herokuapp.com/contact',job).success(function(data){
    //   console.log($scope.msg);
    $scope.msg = {};
    // });
  }
}