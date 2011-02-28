$("#nav li").click(->

    self = $(this)
    glif = $("#nav_glif img")
    
    # Apply selected state to target LI.
    $("#nav li").removeClass('selected')
    self.addClass('selected')
    
    # Calculate centerline of target LI.
    centerline = self.offset().left + self.outerWidth()/2
    
    # Calculate target left edge of glif, factoring in
    # the position of its parent div (compensates for 
    # margin/padding on elements up the DOM).
    destination = centerline - glif.outerWidth()/2 - glif.parent().offset().left
    
    # Slide glif to target position, with duration relative to
    # the distance of the animation.
    glif.animate(
        {
            left:destination
        }, {
            duration: Math.abs(destination - glif.offset()["left"]) * 3.3
            easing: 'easeOutQuart'
        }
    )
    return
)

$("#nav li:first").click()
$("#nav_glif img").fadeIn()