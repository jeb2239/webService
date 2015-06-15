/**
 * Created by barriosj on 6/13/15.
 */
//wap angular code in closure
(function() {

    var app = angular.module('leyApp', []);
    app.controller('OrderController', function ($scope) {
        var socket = new SockJS("/stockticker/ws");
        var stompClient = Stomp.over(socket);
        $scope.orders=[];

        function updatePrices(data){
          $scope.orders=JSON.parse(data.body);



        }

        var onConnect= function(){
            stompClient.subscribe('/topic/price', updatePrices);
        };

        var onError = function(error){
            alert(error.headers.message);
        };

        stompClient.connect("guest", "guest", onConnect, onError);





    });

})();

