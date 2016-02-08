$(function() {
  $(".choose").click(function(event) {
    event.preventDefault();
    var input = $(this);
    var clubDiv = input.parents('.club')[0];

    console.log();

    var url = "RANDOMCHAR" + input.parents('form').attr('action');
    console.log(url);

    // $.ajax(url, {
    //   type: "POST",
    //   success: function(data) {
    //     console.log("SUCCESS!");
    //     console.log(data);
    //     $(clubDiv).addClass('chosen');
    //   }
    // }
    // );

    $.ajax(url, {
      type: "POST"
    })
      .done(function(data) {
        // done code here
        console.log("DONE!");
        console.log(data);
        $(clubDiv).addClass('chosen');
      })
      .fail(function(){
        console.log("FAIL");
        $(clubDiv).addClass('fail');
      })
      .always(function() {
        console.log("ALWAYS");
      });

    //console.log($(this));
    // select the (grand)parent div of `this` with a class of club
    // add a class of `chosen` to that div
  });
});
