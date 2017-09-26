/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#guestsApp',
    data: {
      message: 'Hello Vue guestsApp!',
      guests: [],
    },
    mounted: function() {
      var that = this;
      if (window.location.pathname.includes("/guests")) {
        $.ajax({
          url: '/api/v1/guests.json',
          type: 'GET',
          success: function(result) {
            that.guests = result;
          }
        });
      }
    },
    methods: {

    },
    computed: {

    }
  });
});