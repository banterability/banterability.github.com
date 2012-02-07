$("#elsewhere li > a").hover(->
    self = $(this)
    title = self.find('span').text()
    caption = self.data("caption")
    $("#elsewhere-caption").html("<strong>#{title}:</strong> #{caption}")
->
    $("#elsewhere-caption").html("")
    return
)