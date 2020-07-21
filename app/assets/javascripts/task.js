$(function(){
  function buildHTML(task){
    let html = `<div class="task_list">
                  <div class="task_name">
                    ${task.task.name}
                  </div>
                  <div class="end_date">
                    ${task.end.name}
                  </div>
                </div>`
    return html;
  }
  $('#new_task').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.tasks').append(html);
      $('.task').val('');
      $('.add_button').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    });
  });
});