randFromArray = (array,num = 1) ->
    num = array.length if num > array.length
    tempArray = for i in [0..num-1]
        array[Math.floor Math.random() * (array.length)]

randInt = (max, min = 0) ->
    Math.floor(Math.random() * (max - min + 1)) + min;

randHex = () ->
    hex = '#'+('000000' + (Math.random()*0xFFFFFF<<0).toString(16)).slice(-6);

randRGB = () ->
    R = Math.floor Math.random()*256
    G = Math.floor Math.random()*256
    B = Math.floor Math.random()*256
    "rgb(#{R},#{G},#{B})"
randRGBA= () ->
    R = Math.floor Math.random()*256
    G = Math.floor Math.random()*256
    B = Math.floor Math.random()*256
    A = Math.random().toFixed(2);
    "rgba(#{R},#{G},#{B},#{A})"

randGradient = () ->
    #radial-gradient(ellipse at center, rgba(30,87,153,1) 0%,rgba(41,137,216,1) 50%,rgba(32,124,202,1) 51%,rgba(125,185,232,1) 100%);
    steps = randInt 100
    temp = "linear-gradient(to top right, "
    for i in [steps..0]
        temp += "#{randHex()}#{if i is 0 then ")" else ","} "
    temp

htmlTags = ["a","abbr","acronym","address","applet","area","article","aside","audio","b","base","basefont","bdi","bdo","big","blockquote","body","br","button","canvas","caption","center","cite","code","col","colgroup","datalist","dd","del","details","dfn","dialog","dir","div","dl","dt","em","embed","fieldset","figcaption","figure","font","footer","form","frame","frameset","h1","h2","h3","h4","h5","h6","head","header","hr","html","i","iframe","img","input","ins","kbd","keygen","label","legend","li","link","main","map","mark","menu","menuitem","meta","meter","nav","noframes","noscript","object","ol","optgroup","option","output","p","param","pre","progress","q","rp","rt","ruby","s","samp","section","select","small","source","span","strike","strong","style","sub","summary","sup","table","tbody","td","textarea","tfoot","th","thead","time","title","tr","track","tt","u","ul","var","video","wbr"]

cssProps = [{name:"align-content",values:["stretch", "center","flex-start","flex-end","space-between","space-around","initial","inherit"]},
{name:"align-items",values:["stretch", "center","flex-start","flex-end","baseline","initial","inherit"]},
{name:"align-self",values:["auto","stretch", "center","flex-start","flex-end","baseline","initial","inherit" ]},
# {name:"animation",values:[]},
# {name:"animation-delay",values:[]},
# {name:"animation-direction",values:[]},
# {name:"animation-duration",values:[]},
# {name:"animation-fill-mode",values:[]},
# {name:"animation-iteration-count",values:[]},
# {name:"animation-name",values:[]},
# {name:"animation-play-state",values:[]},
# {name:"animation-timing-function",values:[]},
{name:"backface-visibility",values:["visible","hidden","initial","inherit"]},
{name:"background",values:["randGradient"]},
{name:"background-attachment",values:["scroll","fixed","local","initial","inherit"]},
{name:"background-clip",values:["border-box","padding-box","content-box","initial","inherit"]},
{name:"background-color",values:["rgb","rgba","hex","transparent","initial","inherit"]},
{name:"background-image",values:["randGradient"]},
{name:"background-origin",values:["padding-box","content-box","initial","inherit"]},
{name:"background-position",values:["left top","left center","left bottom","right top","right center","right bottom","center top","center center","center bottom","randNumrandUnit"]},
# {name:"background-repeat",values:["repeat"]},
{name:"background-size",values:["auto","randNumrandUnit","cover","contain","initial","inherit"]},
# {name:"border",values:[]},
# {name:"border-bottom",values:[]},
{name:"border-bottom-color",values:["rgba","rgb","hex","transparent","initial","inherit"]},
{name:"border-bottom-left-radius",values:["randNumrandUnit", "initial","inherit"]},
{name:"border-bottom-right-radius",values:["randNumrandUnit", "initial","inherit"]},
{name:"border-bottom-style",values:["none","hidden","dotted","dashed","solid","double","groove","ridge","inset","outset","initial","inherit"]},
{name:"border-bottom-width",values:["medium","thin","thick","randNumrandUnit", "initial","inherit"]},
{name:"border-collapse",values:["seperate","collapse", "initial","inherit"]},
{name:"border-color",values:["rgb","rgba","hex","transparent","initial","inherit"]},
{name:"border-top-color",values:["rgba","rgb","hex","transparent","initial","inherit"]},
{name:"border-top-left-radius",values:["randNumrandUnit", "initial","inherit"]},
{name:"border-top-right-radius",values:["randNumrandUnit", "initial","inherit"]},
{name:"border-top-style",values:["none","hidden","dotted","dashed","solid","double","groove","ridge","inset","outset","initial","inherit"]},
{name:"border-top-width",values:["medium","thin","thick","randNumrandUnit", "initial","inherit"]},
{name:"border-left-color",values:["rgba","rgb","hex","transparent","initial","inherit"]},
{name:"border-left-left-radius",values:["randNumrandUnit", "initial","inherit"]},
{name:"border-left-right-radius",values:["randNumrandUnit", "initial","inherit"]},
{name:"border-left-style",values:["none","hidden","dotted","dashed","solid","double","groove","ridge","inset","outset","initial","inherit"]},
{name:"border-left-width",values:["medium","thin","thick","randNumrandUnit", "initial","inherit"]},
{name:"border-right-color",values:["rgba","rgb","hex","transparent","initial","inherit"]},
{name:"border-right-left-radius",values:["randNumrandUnit", "initial","inherit"]},
{name:"border-right-right-radius",values:["randNumrandUnit", "initial","inherit"]},
{name:"border-right-style",values:["none","hidden","dotted","dashed","solid","double","groove","ridge","inset","outset","initial","inherit"]},
{name:"border-right-width",values:["medium","thin","thick","randNumrandUnit", "initial","inherit"]},
# {name:"border-image",values:[]},
# {name:"border-image-outset",values:[]},
# {name:"border-image-repeat",values:[]},
# {name:"border-image-slice",values:[]},
# {name:"border-image-source",values:[]},
# {name:"border-image-width",values:[]},
{name:"border-width",values:["medium","thin","thick","randNumrandUnit", "initial","inherit"]},
{name:"bottom",values:["auto","randNumrandUnit", "initial","inherit"]},
{name:"box-shadow",values:["randNumrandUnit randNumrandUnit randNum randNum hex"]},
{name:"box-sizing",values:["content-box","border-box", "initial","inherit"]},
{name:"caption-side",values:["top","bottom","initial","inherit"]},
{name:"clear",values:["none","left","right","both","initial","inherit"]},
{name:"clip",values:["auto","shape","initial","inherit"]},
{name:"color",values:["rgba","rgb","hex","initial","inherit"]},
{name:"column-count",values:["randNum","shape","initial","inherit" ]},
{name:"column-fill",values:["balance", "auto","initial","inherit"]},
{name:"column-gap",values:["randNumrandUnit", "normal","initial","inherit"]},
# {name:"column-rule",values:[]},
{name:"column-rule-color",values:["rgba","rgb","hex","initial","inherit"]},
{name:"column-rule-style",values:["none","hidden","dotted","dashed","solid","double","groove","ridge","inset","outset","initial","inherit"]},
{name:"column-rule-width",values:["medium","thin","thick","randNumrandUnit", "initial","inherit"]},
{name:"column-span",values:["1","all", "initial","inherit"]},
{name:"column-width",values:["auto","randNumrandUnit", "initial","inherit"]},
{name:"columns",values:["auto","randNumrandUnit randNum", "initial","inherit"]},
# {name:"content",values:[]},
# {name:"counter-increment",values:[]},
# {name:"counter-reset",values:[]},
{name:"cursor",values:["alias","all-scroll","auto","cell","context-menu","col-resize","copy","crosshair","default","e-resize","ew-resize","grab","grabbing","help","move","n-resize","ne-resize","nesw-resize","ns-resize","nw-resize","nwse-resize","no-drop","none","not-allowed","pointer","progress","row-resize","s-resize","se-resize","sw-resize","text","vertical-text","w-resize","wait","zoom-in","zoom-out","initial","inherit"]},
{name:"direction",values:["rtl","ltr","initial","inherit"]},
{name:"display",values:["inline","block","flex","inline-block","inline-flex","inline-table","list-item","run-in","table","table-caption","table-column-group","table-header-group","table-footer-group", "table-row-group","table-cell","table-column","none","initial","inherit"]},
{name:"empty-cells",values:["show","hide","initial","inherit"]},
{name:"flex",values:["randNum randNum randNumrandUnit", "auto","initial","inherit","none"]},
{name:"flex-basis",values:["randNumrandUnit","auto","initial","inherit"]},
{name:"flex-direction",values:["row","row-reverse","column","column-reverse","initial","inherit"]},
# {name:"flex-flow",values:[]},
{name:"flex-grow",values:["randNumrandUnit","initial","inherit"]},
{name:"flex-shrink",values:["randNumrandUnit","initial","inherit"]},
{name:"flex-wrap",values:["wrap","nowrap","wrap-reverse","initial","inherit"]},
{name:"float",values:["none","left","right","initial","inherit"]},
# {name:"font",values:[]},
# {name:"@font-face",values:[]},
{name:"font-family",values:["randFont","initial","inherit"]},
{name:"font-size",values:["medium","xx-small","x-small","small","large","x-large","xx-large","smaller","larger","randNumrandUnit","initial","inherit"]},
{name:"font-size-adjust",values:["none","initial","inherit"]},
{name:"font-stretch",values:["ultra-condensed","extra-condensed","condensed","semi-condensed","normal","semi-expanded","expanded","extra-expanded","ultra-expanded","initial","inherit"]},
{name:"font-style",values:["normal","italic","oblique","initial","inherit"]},
{name:"font-variant",values:["normal","small-caps","initial","inherit"]},
{name:"font-weight",values:["normal","bold","bolder","lighter","number","initial","inherit;"]},
{name:"hanging-punctuation",values:["none","first","last","allow-end","force-end","initial","inherit"]},
{name:"height",values:["randNumrandUnit","auto","initial","inherit"]},
{name:"justify-content",values:["flex-start","flex-end","center","space-between","space-around","initial","inherit"]},
# {name:"@keyframes",values:[]},
{name:"left",values:["auto","randNumrandUnit","initial","inherit"]},
{name:"letter-spacing",values:["normal","randNumrandUnit","initial","inherit"]},
{name:"line-height",values:["normal","randNum","randNumrandUnit","initial","inherit"]},
# {name:"list-style",values:[]},
# {name:"list-style-image",values:[]},
{name:"list-style-position",values:["inside","outside","initial","inherit"]},
{name:"list-style-type",values:["disc","inital","inherit"]},
{name:"margin",values:["randNumrandUnit randNumrandUnit randNumrandUnit randNumrandUnit","auto","initial","inherit"]},
{name:"margin-bottom",values:["randNumrandUnit","auto","initial","inherit"]},
{name:"margin-left",values:["randNumrandUnit","auto","initial","inherit"]},
{name:"margin-right",values:["randNumrandUnit","auto","initial","inherit"]},
{name:"margin-top",values:["randNumrandUnit","auto","initial","inherit"]},
{name:"max-height",values:["randNumrandUnit","none","initial","inherit"]},
{name:"max-width",values:["randNumrandUnit","none","initial","inherit"]},
# {name:"@media",values:[]},
{name:"min-height",values:["randNumrandUnit","initial","inherit"]},
{name:"min-width",values:["randNumrandUnit","initial","inherit"]},
# {name:"nav-down",values:[]},
# {name:"nav-index",values:[]},
# {name:"nav-left",values:[]},
# {name:"nav-right",values:[]},
# {name:"nav-up",values:[]},
{name:"opacity",values:["randFloat","initial","inherit"]},
{name:"order",values:["randNum","initial","inherit"]},
# {name:"outline",values:[]},
{name:"outline-color",values:["invert","rgba","rgb","hex","initial","inherit"]},
{name:"outline-offset",values:["randNumrandUnit","initial","inherit"]},
{name:"outline-style",values:["none","hidden","dotted","dashed","solid","double","groove","ridge","inset","outset","initial","inherit"]},
{name:"outline-width",values:["medium","thin","thick","randNumrandUnit", "initial","inherit"]},
{name:"overflow",values:["visible","hidden","scroll","auto","initial","inherit"]},
{name:"overflow-x",values:["visible","hidden","scroll","auto","initial","inherit"]},
{name:"overflow-y",values:["visible","hidden","scroll","auto","initial","inherit"]},
{name:"padding",values:["randNumrandUnit","initial","inherit"]},
{name:"padding-bottom",values:["randNumrandUnit","initial","inherit"]},
{name:"padding-left",values:["randNumrandUnit","initial","inherit"]},
{name:"padding-right",values:["randNumrandUnit","initial","inherit"]},
{name:"padding-top",values:["randNumrandUnit","initial","inherit"]},
{name:"page-break-after",values:["auto","always","avoid","left","right","initial","inherit"]},
{name:"page-break-before",values:["auto","always","avoid","left","right","initial","inherit"]},
{name:"page-break-inside",values:["auto","avoid","initial","inherit"]},
{name:"perspective",values:["randNumrandUnit","initial","inherit"]},
{name:"perspective-origin",values:["randNumrandUnit randNumrandUnit","initial","inherit"]},
{name:"position",values:["static","absolute","fixed","relative","initial","inherit"]},
# {name:"quotes",values:[]},
{name:"resize",values:["none","both","horizontal","vertical","initial","inherit"]},
{name:"right",values:["auto","randNumrandUnit","initial","inherit"]},
{name:"tab-size",values:["randNum","initial","inherit"]},
{name:"table-layout",values:["auto","fixed","initial","inherit"]},
{name:"text-align",values:["left","right","center","justify","initial","inherit"]},
{name:"text-align-last",values:["left","right","center","justify","initial","inherit"]},
{name:"text-decoration",values:["none","underline","overline","line-through","initial","inherit"]},
{name:"text-decoration-color",values:["rgba","rgb","hex","initial","inherit"]},
# {name:"text-decoration-line",values:[]},
# {name:"text-decoration-style",values:[]},
{name:"text-indent",values:["randNumrandUnit","initial","inherit"]},
# {name:"text-justify",values:[]},
{name:"text-overflow",values:["clip","ellipsis","string","initial","inherit"]},
{name:"text-shadow",values:["randNumrandUnit randNumrandUnit randNum randNum hex","none","initial","inherit"]},
{name:"text-transform",values:["none","capitalize","uppercase","lowercase","initial","inherit"]},
{name:"top",values:["auto","randNumrandUnit","initial","inherit"]},
# {name:"transform",values:[]},
# {name:"transform-origin",values:[]},
# {name:"transform-style",values:[]},
# {name:"transition",values:[]},
# {name:"transition-delay",values:[]},
# {name:"transition-duration",values:[]},
# {name:"transition-property",values:[]},
# {name:"transition-timing-function",values:[]},
# {name:"unicode-bidi",values:[]},
{name:"vertical-align",values:["baseline","length","sub","super","top","text-top","middle","bottom","text-bottom","initial","inherit"]},
{name:"visibility",values:["visible","hidden","collapse","initial","inherit"]},
{name:"white-space",values:["normal","nowrap","pre","pre-line","pre-wrap","initial","inherit"]},
{name:"width",values:["randNumrandUnit","auto","initial","inherit"]},
{name:"word-break",values:["normal","break-all","keep-all","initial","inherit"]},
{name:"word-spacing",values:["auto","randNumrandUnit","initial","inherit"]},
{name:"word-wrap",values:["normal","break-word","initial","inherit"]},
{name:"z-index",values:["auto","randNumrandUnit","initial","inherit"]}]

units = ["em","ex","%","px","cm","mm","in","pt","pc","ch","rem","vh","vw","vmin","vmax"]

genCSS = () ->
    if document.getElementById("settings-elements").value == ""
        numElements = 10
    else
        numElements = document.getElementById("settings-elements").value
    if document.getElementById("settings-properties").value == ""
        numProperties = 10
    else
        numProperties = document.getElementById("settings-properties").value
    maxSize = 1000
    if document.getElementById("settings-required-elements").value == ""
        elements = randFromArray htmlTags,numElements
    else
        elements = document.getElementById("settings-required-elements").value.split(",")
    css={}
    randGradient()
    for element in elements
        css[element] = {}
        tempProperties = randFromArray cssProps,numProperties
        for property in tempProperties
            tempValues = randFromArray property.values,1
            for value in tempValues
                for name in (value.match(/randNum/g) || [])
                    value = value.replace("randNum", randInt maxSize);
                for name in (value.match(/randUnit/g) || [])
                    value = value.replace("randUnit", randFromArray units);
                for name in (value.match(/rgb$/g) || [])
                    value = value.replace(/rgb$/g, randRGB());
                for name in (value.match(/rgba$/g) || [])
                    value = value.replace(/rgba$/g, randRGBA());
                value = value.split("hex").join(randHex());
                value = value.split("float").join(Math.random().toFixed(2););
                value = value.split("randGradient").join(randGradient());
                css[element][property.name] = value


    string = ""

    for key, value of css
        string+= "#{key} {&#13;"
        for key1, value1 of value
            string += "&#09;#{key1}: #{value1}; &#13;"
        string += "}&#13;"

    document.getElementsByClassName("code-block")[0].innerHTML = "<code class='language-css'></code>"
    document.getElementsByClassName("language-css")[0].innerHTML = string
    Prism.highlightElement(document.getElementsByClassName("language-css")[0]);

genCSS()
document.getElementById("gen-button").addEventListener("click", genCSS);
