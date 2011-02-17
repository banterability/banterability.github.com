(function() {
  $("#projects li").click(function() {
    var canvas, caption, image, self;
    self = $(this);
    canvas = $("#project-canvas");
    caption = self.data("caption");
    image = self.data("image");
    if (self.is('.selected')) {
      canvas.slideUp();
      return self.removeClass('selected');
    } else {
      $("#projects li").removeClass("selected");
      self.addClass("selected");
      if (canvas.is(":visible")) {
        return canvas.slideUp(function() {
          canvas.find("#canvas-wrapper").html("<img src='" + image + "' /><p class='caption'>" + caption + "</p>");
          return canvas.slideDown();
        });
      } else {
        canvas.find("#canvas-wrapper").html("<img src='" + image + "' /><p class='caption'>" + caption + "</p>");
        return canvas.slideDown();
      }
    }
  });
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
