$("#project-list li").click(->
    self = $(this)
    glif = $("#project-glif img")
    $("#project-list li").removeClass("selected")
    self.addClass("selected")

    # Calculate center of new element
    centerline = self.offset().left + self.outerWidth() / 2
    destination = centerline - glif.outerWidth() / 2 - glif.parent().offset().left
    
    # Animate to new position
    glif.animate({
        left: destination
    }, {
        duration: Math.abs(destination - glif.offset()["left"]) * 3.3,
        easing: 'easeOutQuart'
    })
    return
)

$("#project-list li:first").click();
$("#project-glif img").fadeIn();