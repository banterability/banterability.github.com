(function() {
  $("#elsewhere li > a").hover(function() {
    var caption, self, title;
    self = $(this);
    title = self.data("title");
    caption = self.data("caption");
    return $("#elsewhere-caption").html("<strong>" + title + ":</strong> " + caption);
  }, function() {
    return $("#elsewhere-caption").html("");
  });
  $("#kpcc").click();
}).call(this);
