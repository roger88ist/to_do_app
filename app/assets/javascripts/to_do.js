function updateToDo(element) {
  var id = $(element).attr('id').split('completed_to_do_')[1];
  $.ajax({
    url: '/to_do/' + id,
    type: 'PUT',
    data: {
      completed: element.checked
    }
  }).done(function(data) { console.log(data); });
};