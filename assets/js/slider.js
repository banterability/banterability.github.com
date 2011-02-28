(function() {
  $("#nav li").click(function() {
    var centerline, destination, glif, self;
    self = $(this);
    glif = $("#nav_glif img");
    $("#nav li").removeClass('selected');
    self.addClass('selected');
    centerline = self.offset().left + self.outerWidth() / 2;
    destination = centerline - glif.outerWidth() / 2 - glif.parent().offset().left;
    glif.animate({
      left: destination
    }, {
      duration: Math.abs(destination - glif.offset()["left"]) * 3.3,
      easing: 'easeOutQuart'
    });
  });
  $("#nav li:first").click();
  $("#nav_glif img").fadeIn();
}).call(this);
