$(document).ready(function ()
{
    $(".normal").click(function ()
    {
        $(this).hide();
    });
    $(window).scroll(function ()
    {
        if($(this).scrollTop() > 100)
        {
            $(".On-Top").fadeIn();
        }
        else
        {
            $(".On-Top").fadeOut();
        }
    });
    $(".On-Top").click(function ()
    {
        $("html,body").animate({scrollTop:0},800);
        return false;
    })

    var hideOrNot = true;

    function setHideOrNot(text)
    {
        if(text.length < 300)
        {
            hideOrNot = false;
        }
        return hideOrNot;
    }

        $text = $(".Menu-Item-Description").find("p").text();
        $paragraph = $(".Menu-Item-Description").find("p");
        $buttons  = $(".Menu-Item-Description").find(".Roll-Item-Description");

        $paragraph.each(function ()
        {
            var target = $(this);
            var oldText = target.text();
            i = $paragraph.index($(this));
            if (target.text().length > 400)
            {
                var newtext = target.text().substring(0,200);
                target.text(newtext + "...");
                $buttons.eq(i).css({'display': 'block'});
                $buttons.eq(i).click(function ()
                {
                    var trg = $(this);
                    if(trg.text()=="Rozwin opis")
                    {
                        trg.text("Zwij opis");
                        target.slideUp(800,function ()
                        {
                            target.text(oldText);
                            target.slideDown();
                        });
                    }
                    else
                    {
                        trg.text("Rozwin opis");
                        target.slideUp(800,function ()
                        {
                            target.text(newtext + "...");
                            target.slideDown();
                        });
                    }
                })
            }
        });
});

