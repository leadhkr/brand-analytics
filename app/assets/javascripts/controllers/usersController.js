$(document).ready(function() {
  $('#index-registration').on('submit', app.users.controllers.new.init)
})

app.users.controllers = {
  new: {
    init: function(event) {
      event.preventDefault();
      var firstName = $('#first_name').val();
      var lastName = $('#last_name').val();
      $.ajax({
        url: '/users/new',
        method: 'GET',
        data: { firstName: firstName, lastName: lastName }
      })
    }
  }
}
