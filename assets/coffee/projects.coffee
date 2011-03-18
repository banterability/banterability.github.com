preload = (images) ->
    $(images).each((index, imageUrl) ->
        $("<img />").attr('src', imageUrl)
    )
    return

preload([
       "/img/projects/election.jpg",
       "/img/projects/prison.jpg",
       "/img/projects/salary.jpg",
       "/img/projects/solar.jpg"
])

$("#project-list li").click(->
    self = $(this)
    glif = $("#project-glif img")
    project_name = self.data("project")
    project = $("#project-canvas .#{project_name}")
    $("#project-list li").removeClass("selected")
    self.addClass("selected")
    
    # Fade out projects
    $("#project-canvas > div").fadeOut();
    
    # Calculate center of new element
    centerline = self.position().left + self.outerWidth() / 2
    destination = centerline - glif.outerWidth() / 2 - glif.parent().position().left

    # Sync animation duration
    animation_time = Math.abs(destination - glif.position()["left"]) * 2
    
    # Animate to new position    
    glif.animate({
        left: destination
    }, {
        duration: animation_time,
        easing: 'easeOutQuart'
    })
    
    # Fade in new project
    project.fadeIn(animation_time);
    return
)

$("#project-list li:first").click();
$("#project-glif img").fadeIn();