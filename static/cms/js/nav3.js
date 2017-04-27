function getObject(objectId) {
if(document.getElementById && document.getElementById(objectId)) {
return document.getElementById(objectId);
} else if (document.all && document.all(objectId)) {
return document.all(objectId);
} else if (document.layers && document.layers[objectId]) {
return document.layers[objectId];
} else {
return false;
}
}
function killerrors() { return true; } window.onerror = killerrors; 

function bot(n){
for(var i=1;i<=5;i++){
if (i==n){
getObject('exp'+i).className='bot';
getObject('expb'+i).className='';
}
else {
getObject('exp'+i).className='';
getObject('expb'+i).className='noi';
}
}
}

function bot2(n){
for(var i=1;i<=4;i++){
if (i==n){
getObject('exx'+i).className='bot';
getObject('exxb'+i).className='';
}
else {
getObject('exx'+i).className='';
getObject('exxb'+i).className='noi';
}
}
}

function bot5(n){
for(var i=1;i<=3;i++){
if (i==n){
getObject('tow'+i).className='bot';
getObject('towb'+i).className='left_tex';
}
else {
getObject('tow'+i).className='';
getObject('towb'+i).className='noi';
}
}
}

function bot3(n){
for(var i=1;i<=3;i++){
if (i==n){
getObject('toz'+i).className='bot';
getObject('tozb'+i).className='';
}
else {
getObject('toz'+i).className='';
getObject('tozb'+i).className='noi';
}
}
}

function bot4(n){
for(var i=1;i<=4;i++){
if (i==n){
getObject('tof'+i).className='bot';
getObject('tofb'+i).className='right_hot_box';
}
else {
getObject('tof'+i).className='';
getObject('tofb'+i).className='noi';
}
}
}

function bot6(n){
for(var i=1;i<=3;i++){
if (i==n){
getObject('tos'+i).className='bot';
getObject('tosb'+i).className='';
}
else {
getObject('tos'+i).className='';
getObject('tosb'+i).className='noi';
}
}
}


thisHREF = document.location.href; 
arr=thisHREF.split(".");
var str =arr[0];
var str1 =  str.replace('http://','');     
switch(str1)
{
	case 'www':
		document.getElementById('tf1').className = 'current';
	break;
	case 'Fitness':
		document.getElementById('tf2').className = 'current';
	break;
	case 'Fashion':
		document.getElementById('tf3').className = 'current';
	break;
	case 'Healthy':
		document.getElementById('tf4').className = 'current';
	break;
	case 'Skin':
		document.getElementById('tf5').className = 'current';
	break;
	case 'Makeup':
		document.getElementById('tf6').className = 'current';
	break;
	case 'Emotion':
		document.getElementById('tf7').className = 'current';
	break;
	case 'Breast':
		document.getElementById('tf8').className = 'current';
	break;
	case 'Ent':
		document.getElementById('tf9').className = 'current';
	break;
	case 'Pictorial':
		document.getElementById('tf10').className = 'current';
	break;
	case 'Baby':
		document.getElementById('tf11').className = 'current';
	break;
	case 'Home':
		document.getElementById('tf12').className = 'current';
	break;
	case 'Astro':
		document.getElementById('tf13').className = 'current';
	break;
	case 'Video':
		document.getElementById('tf15').className = 'current';
	break;
}  
