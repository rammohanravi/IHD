<script language="JavaScript1.2">

/*
Top-Down scrolling window Script- © Dynamic Drive (www.dynamicdrive.com)
For full source code, visit http://www.dynamicdrive.com
This notice MUST stay intact for use
*/

//change 1 to another integer to alter the scroll speed. Greater is faster
var speed=1
var currentpos=0,alt=1,curpos1=0,curpos2=-1
function initialize(){
startit()
}

function iecompattest(){
return (document.compatMode!="BackCompat")? document.documentElement : document.body
}

function scrollwindow(){
if (document.all)
temp=iecompattest().scrollTop
else
temp=window.pageYOffset
if (alt==0)
alt=1
else
alt=0
if (alt==0)
curpos1=temp
else
curpos2=temp
if (curpos1!=curpos2){
if (document.all)
currentpos=iecompattest().scrollTop+speed
else
currentpos=window.pageYOffset+speed
window.scroll(0,currentpos)
}
else{
currentpos=0
window.scroll(0,currentpos)
}
}
function startit(){
setInterval("scrollwindow()",10)
}
window.onload=initialize
</script>