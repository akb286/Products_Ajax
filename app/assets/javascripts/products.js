// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var currentGame = {};

$(document).ready(function() {
  $('.product-item').on('click', function() {
    currentProduct.id = this.dataset.id
    $.ajax({
      url: "http://json-server.devpointlabs.com/api/v1/products",
      method: 'GET',
      dataType: 'JSON'
    }).done(function(users) {
      users.forEach(function(user) {
        var list = $('.user-list')
        var li = '<a href="localhost:3000/users/' + user.id + '"><li class="list-item" id="user" data-user-id="' + user.id + '">' + user.first_name + '-' + user.last_name + ': ' + user.phone_number + '</li></a>'
        list.append(li)
      });
    });
  });
});