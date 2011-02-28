$("#projects li").click(->
    self = $(this)
    canvas = $("#project-canvas")
    caption = self.data("caption")
    image = self.data("image")
    
    if self.is('.selected')
        canvas.slideUp()
        self.removeClass('selected')
    else
        $("#projects li").removeClass("selected")
        self.addClass("selected")
        if canvas.is(":visible")
            canvas.slideUp(->
                canvas.find("#canvas-wrapper").html("<img src='#{image}' /><p class='caption'>#{caption}</p>")
                canvas.slideDown()
            )
        else
            canvas.find("#canvas-wrapper").html("<img src='#{image}' /><p class='caption'>#{caption}</p>")
            canvas.slideDown()
        return
)

$("#elsewhere li > a").hover(->
    self = $(this)
    title = self.data("title")
    caption = self.data("caption")
    $("#elsewhere-caption").html("<strong>#{title}:</strong> #{caption}")
->
    $("#elsewhere-caption").html("")
)

$("#kpcc").click()