$("#elsewhere li > a").hover(->
    self = $(this)
    title = self.data("title")
    caption = self.data("caption")
    $("#elsewhere-caption").html("<strong>#{title}:</strong> #{caption}")
->
    $("#elsewhere-caption").html("")
)

$("#kpcc").click()