jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()
#$(".editlink").on("click", function(e) {
#  e.preventDefault();
#  var dataset = $(this).prev(".datainfo");
#  var savebtn = $(this).next(".savebtn");
#  var theid = dataset.attr("id");
#  alert(theid);
#  var newid = theid + "-form";
#  var currval = dataset.text();
#
#  dataset.empty();
#
#  $('<input type="text" name="' + newid + '" id="' + newid + '" value="' + currval + '" class="hlite">').appendTo(dataset);
#
#  $(this).css("display", "none");
#  savebtn.css("display", "block");
#});
#$(".savebtn").on("click", function(e){
#  e.preventDefault();
#  var elink   = $(this).prev(".editlink");
#  var field_id = $(this).attr("id")
#  var dataset = elink.prev(".datainfo");
#  var newid   = dataset.attr("id");
#
#  var cinput  = "#"+newid+"-form";
#  var einput  = $(cinput);
#  var newval  = einput.attr("value");
#  $.ajax({
#    url: "/marks",
#    type: "POST",
#    data: {marks: newval},
#    success: function(resp){ }
#  });
#  $(this).css("display", "none");
#  einput.remove();
#  dataset.html(newval);
#
#  elink.css("display", "block");
#});