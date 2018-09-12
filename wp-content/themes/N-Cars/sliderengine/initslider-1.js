jQuery(document).ready(function(){

    var scripts = document.getElementsByTagName("script");

    var jsFolder = "";

    for (var i= 0; i< scripts.length; i++)

    {

        if( scripts[i].src && scripts[i].src.match(/initslider-1\.js/i))

            jsFolder = scripts[i].src.substr(0, scripts[i].src.lastIndexOf("/") + 1);

    }

    jQuery("#amazingslider-1").amazingslider({

        jsfolder:jsFolder,

        width:645,

        height:390,

        skinsfoldername:"",

        loadimageondemand:false,

        isresponsive:true,

        autoplayvideo:false,

        pauseonmouseover:true,

        addmargin:true,

        randomplay:false,

        playvideoonclickthumb:true,

        slideinterval:5000,

        enabletouchswipe:true,

        transitiononfirstslide:true,

        loop:0,

        autoplay:true,

        navplayvideoimage:"play-32-32-0.png",

        navpreviewheight:60,

        timerheight:2,

        shownumbering:false,

        skin:"FeatureList",

        textautohide:false,

        addgooglefonts:true,

        navshowplaypause:true,

        navshowplayvideo:true,

        navshowplaypausestandalonemarginx:8,

        navshowplaypausestandalonemarginy:8,

        navbuttonradius:0,

        navpreviewposition:"top",

        navmarginy:16,

        showshadow:false,

        navfeaturedarrowimagewidth:8,

        navpreviewwidth:120,

        googlefonts:"Inder",

        textpositionmarginright:24,

        bordercolor:"#ffffff",

        navthumbnavigationarrowimagewidth:32,

        navthumbtitlehovercss:"",

        arrowwidth:48,

        texteffecteasing:"easeOutCubic",

        texteffect:"slide",

        navspacing:4,

        playvideoimage:"playvideo-64-64-0.png",

        ribbonimage:"ribbon_topleft-0.png",

        navwidth:100,

        navheight:70,

        arrowimage:"arrows-48-48-2.png",

        timeropacity:0.6,

        navthumbnavigationarrowimage:"carouselarrows-32-32-1.png",

        navshowplaypausestandalone:false,

        navpreviewbordercolor:"#ffffff",

        ribbonposition:"topleft",

        navthumbdescriptioncss:"display:block;position:relative;padding:2px 4px;text-align:left;font:normal 11px Arial,Helvetica,sans-serif;color:#333;",

        navborder:2,

        navthumbtitleheight:18,

        textpositionmargintop:24,

        navswitchonmouseover:false,

        navarrowimage:"navarrows-28-28-0.png",

        arrowtop:50,

        textstyle:"static",

        playvideoimageheight:64,

        navfonthighlightcolor:"#666666",

        showbackgroundimage:false,

        navpreviewborder:4,

        navopacity:0.8,

        shadowcolor:"#aaaaaa",

        navbuttonshowbgimage:true,

        navbuttonbgimage:"navbuttonbgimage-28-28-0.png",

        navthumbnavigationarrowimageheight:32,

        textbgcss:"display:block; position:absolute; top:0px; left:0px; width:100%; height:100%; background-color:#333333; opacity:0.6; filter:alpha(opacity=60);",

        navpreviewarrowwidth:16,

        playvideoimagewidth:64,

        navshowpreviewontouch:false,

        bottomshadowimagewidth:110,

        showtimer:true,

        navradius:0,

        navshowpreview:false,

        navpreviewarrowheight:8,

        navmarginx:16,

        navfeaturedarrowimage:"featuredarrow-8-16-0.png",

        showribbon:false,

        navstyle:"thumbnails",

        textpositionmarginleft:24,

        descriptioncss:"display:block; position:relative; margin-top:4px; font:12px Inder,Arial,Tahoma,Helvetica,sans-serif; color:#fff;",

        navplaypauseimage:"navplaypause-28-28-0.png",

        backgroundimagetop:-10,

        timercolor:"#ffffff",

        numberingformat:"%NUM/%TOTAL ",

        navfontsize:12,

        navhighlightcolor:"#333333",

        navimage:"bullet-24-24-5.png",

        navshowplaypausestandaloneautohide:false,

        navbuttoncolor:"#999999",

        navshowarrow:true,

        navshowfeaturedarrow:true,

        lightboxbarheight:48,

        titlecss:"display:block; position:relative; font-family: NexaBold; font-size:14px; color:#fff",

        ribbonimagey:0,

        ribbonimagex:0,

        navshowplaypausestandaloneposition:"bottomright",

        shadowsize:5,

        arrowhideonmouseleave:1000,

        navshowplaypausestandalonewidth:28,

        navfeaturedarrowimageheight:16,

        navshowplaypausestandaloneheight:28,

        backgroundimagewidth:120,

        navcolor:"#999999",

        navthumbtitlewidth:150,

        arrowheight:48,

        arrowmargin:8,

        texteffectduration:1000,

        bottomshadowimage:"bottomshadow-110-100-5.png",

        border:4,

        timerposition:"bottom",

        navfontcolor:"#333333",

        navthumbnavigationstyle:"auto",

        borderradius:0,

        navbuttonhighlightcolor:"#333333",

        textpositionstatic:"bottom",

        navthumbstyle:"imageandtitledescription",

        textcss:"display:block; padding:12px; text-align:center;",

        navbordercolor:"#ffffff",

        navpreviewarrowimage:"previewarrow-16-8-0.png",

        showbottomshadow:true,

        navdirection:"vertical",

        textpositionmarginstatic:0,

        backgroundimage:"",

        navposition:"right",

        arrowstyle:"mouseover",

        bottomshadowimagetop:100,

        textpositiondynamic:"bottomleft",

        navshowbuttons:false,

        navthumbtitlecss:"display:block;position:relative;padding:2px 4px;text-align:left;font:bold 12px Arial,Helvetica,sans-serif;color:#333;",

        textpositionmarginbottom:24,

        slide: {

            duration:1000,

            easing:"easeInBack",

            checked:true,

            effectdirection:0

        },

        transition:"slide"

    });

});