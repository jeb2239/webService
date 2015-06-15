<!DOCTYPE html>
<html>

<head>
  <script src="https://cdn.jsdelivr.net/sockjs/0.3.4/sockjs.min.js"></script>
  <script src="resources/stomp.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
  <script src="resources/OrderController.js"></script>
</head>

<div ng-app="leyApp" ng-controller="OrderController" >

  <table>
    <tr ng-repeat="order in orders" >
      <td>{{order.code}}</td>
      <td>{{order.price}}</td>
      <td>{{order.timeStr}}</td>
    </tr>

  </table>




</div>



</html>