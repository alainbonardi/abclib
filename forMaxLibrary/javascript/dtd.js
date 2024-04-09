
autowatch = 1;
inlets = 1;
outlets = 2; 
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0; 

var myDelays = [], channels = 7, functiontype = 0, delayHittedBefore=0, bgcolor = [0.118, 0.118, 0.118, 1], bordercolor = [0.502, 0.502, 0.502, 1], bordersize = 2, fa = 0, thickness = 1, radius = 10, width = this.box.rect[2] - this.box.rect[0], height = this.box.rect[3] - this.box.rect[1], width_utill, onset = 110, offset = 50, delay = 1000, delayHitted = 0, i; 

declareattribute("functiontype", null, "set_functiontype", 1);
declareattribute("fa", null, "set_fa", 1);
declareattribute("delay", null, "set_delay", 1);
declareattribute("channels", null, "set_channels", 1);
//declareattribute("mode", null, "set_mode", 1);

initialize();

//-------------------------------------------------------------------
//------------------------- GETTERS & SETTERS -----------------------
//-------------------------------------------------------------------
function set_functiontype(ft) {
	functiontype = ft;
    initialize();
    mgraphics.redraw();
}
function set_fa(factor) {
	fa = factor;
    mgraphics.redraw();
}
function set_delay(del) {
    delay = del;
    mgraphics.redraw();
}
function set_channels(chan) {
    channels = chan;
    initialize();
    notifyclients();
    mgraphics.redraw();
}
function getvalueof() {
	var a = new Array();
    var j = 0; 
	for (i in myDelays) {
		a[j] = myDelays[i].position[0] ;
        a[j+1] = myDelays[i].position[1] ;
        j+= 2; 
	}
	if (a.length == 0)
		a[a.length] = "none";
	return (a);
}
function setvalueof() {
    myDelays.splice(0, myDelays.length);
    j = 0; 
	for (i = 0; i < arguments.length/2; i ++) {
        myDelays[i] = new segment([arguments[j], arguments[j+1]], false, false, 0, 0);
        j+= 2; 
	}	
	mgraphics.redraw();
}
//-------------------------------------------------------------------
//------------------------- INIT & CLASS ----------------------------
//-------------------------------------------------------------------
function segment(position, delayed, overcircle, x, y){
    this.position = position;
    this.delayed = false;
    this.overcircle = false;
    this.x = x;
    this.y = y;
}
function initialize(){
    for (i = 0; i < channels; i++){
        myDelays[i] = new segment([fill(i), 0.5], false, false, 0, 0);
    }
notifyclients();
mgraphics.redraw();

}
function fill(index){
var ind = (index + 1) / channels
    switch (functiontype) {
        case 0:
            return Math.floor( 100 * ind ) / 100
        case 1:
            return Math.floor( 100 * Math.pow(ind, 2) ) / 100
        case 2:
            return Math.floor( 100 * Math.sin(ind * ( Math.PI / 2 ) ) ) / 100
        case 3: 
            return Math.floor( 100 * Math.log( 1 + ind ) / Math.log(2) ) / 100
        case 4: 
            return Math.floor( 100 * Math.sqrt(ind) ) / 100
        case 5: 
            return easeInSine(ind)
        case 6:
            return easeInOutSine(ind)
        case 7: 
            return easeOutQuad(ind)
        case 8: 
            return easeInOutQuad(ind) 
        case 9:
            return easeInCubic(ind)
        case 10:
            return easeOutCubic(ind)
        case 11:
            return easeInOutCubic(ind)
        case 12:
            return easeInQuart(ind)
        case 13:
            return easeOutQuart(ind)
        case 14:
            return easeInOutQuart(ind)
        case 15:
            return easeInQuint(ind)
        case 16:
            return easeOutQuint(ind)
        case 17:
            return easeInOutQuint(ind)
        case 18:
            return easeInExpo(ind)
        case 19:
            return easeInOutExpo(ind)
        case 20:
            return easeInCirc(ind)
        case 21:
            return easeOutCirc(ind)
        default: 
            post("Expected value between 0 and 21");
            return Math.floor( 100 * ind ) / 100
		}
}
function out(){
var s1, s2, del, gain;
	for(i = 0 ; i < channels; i++){
	
 	s1 = "delay" + String(i+1) ;
    s2 = "gain" + String(i+1);
 	del = Math.floor(myDelays[i].position[0] * 1000)/1000;
    gain = Math.floor((1 - myDelays[i].position[1])*2000)/1000;

	outlet(0, s1, del) ;
    outlet(1, s2, gain) ;
	}	
}
//-------------------------------------------------------------------
//------------------------- JSUI & MGRAPHICS FUNCTIONS --------------
//-------------------------------------------------------------------
function paint(){
    
    width_utill = width - (onset + offset);
	with(mgraphics){
		
	mgraphics.set_source_rgba(bgcolor);
	mgraphics.rectangle_rounded(bordersize * 0.5, bordersize * 0.5, width - bordersize, height - bordersize, 10.,10.);
	mgraphics.set_line_width(bordersize);
	mgraphics.fill_preserve();
	mgraphics.set_source_rgba(bordercolor);
	mgraphics.stroke();

		set_line_width(1);
		set_font_size(10.);
		set_source_rgba(0.831, 0.161, 0.173, 1.0)
		move_to(10, 10);
		show_text("delay (ms)");
		stroke();	
			
		for(i=0; i<channels; i++){
        
            myDelays[i].x = myDelays[i].position[0] * width_utill + onset;
            myDelays[i].y = myDelays[i].position[1] * height;
            
            if( myDelays[i].position[0] > (1-fa) ){
                set_source_rgba(0.831, 0.161, 0.173, 1.0)
            } else 
                set_source_rgba(0.314, 0.314, 0.314, 1.0)
            if( myDelays[i].overcircle){
                set_line_width(2);
            } else 
                set_line_width(1);
            
            ellipse(myDelays[i].x - thickness - radius/2, myDelays[i].y - thickness - radius, radius, radius ) ;
			stroke();
			move_to(myDelays[i].x - thickness, myDelays[i].y);
			line_to(myDelays[i].x - thickness, height);
			stroke();
            set_line_width(1);
			move_to(myDelays[i].x - thickness + radius, myDelays[i].y);
 		
			var str = "s"+(i+1); 		
			show_text(str);
			stroke();
            
			if (i < 15){
                move_to(5, (height-(i*11) - 5))
            }else{
                move_to(50, (height-((i-10)*11) - 5))
            }
			var str2 = (i+1)+" : "+( Math.floor( myDelays[i].position[0] * delay  * fa));
			show_text(str2);
			stroke();
			
		}
	}
out();
}
function hittest (x,y) {
    
	for (i = 0; i < myDelays.length; i++) {
         
		var deltasquared = (x - myDelays[i].x) * (x - myDelays[i].x) + (y - myDelays[i].y) * (y - myDelays[i].y);
        
		if (deltasquared < radius*radius) { 
            if(delayHitted !== i){
            delayHittedBefore = delayHitted;
            delayHitted = i ;
            return 1 
            } else
            delayHitted = i ;
            return 1   
        }
	}  
    return 0
} 

function onidle() {
	if (!myDelays[delayHitted].overcircle) {
        myDelays[delayHittedBefore].overcircle = false;
        myDelays[delayHitted].overcircle = true; 
        mgraphics.redraw(); 
	} 
}
function onidleout() {
	myDelays[delayHitted].overcircle = false;
	mgraphics.redraw();
}
function onresize() {
    width = this.box.rect[2] - this.box.rect[0] ; //largeur de la fenêtre
    height = this.box.rect[3] - this.box.rect[1] ; //hauteur de la fenêtre
    mgraphics.redraw();
}
function ondrag(x, y) {
    myDelays[delayHitted].position[0] = Math.max(0, Math.min((x - onset)/width_utill, 1));
    myDelays[delayHitted].position[1] = Math.max(height/2, Math.min(y, height))/height;
    notifyclients();
    mgraphics.redraw();

}
//-------------------------------------------------------------------
//------------------------- Function of distribution ----------------
//-------------------------------------------------------------------
function easeInSine(x){
  return (1 - Math.cos((x * Math.PI) / 2));

}
function easeInOutSine(x){
  return -(Math.cos(Math.PI * x) - 1) / 2;

}
function easeOutQuad(x){
  return 1 - (1 - x) * (1 - x);

}
function easeInOutQuad(x){
  return x < 0.5 ? 2 * x * x : 1 - Math.pow(-2 * x + 2, 2) / 2;

}
function easeInCubic(x){
  return x * x * x;

}
function easeOutCubic(x){
  return 1 - Math.pow(1 - x, 3);

}
function easeInOutCubic(x){
  return x < 0.5 ? 4 * x * x * x : 1 - Math.pow(-2 * x + 2, 3) / 2;

}
function easeInQuart(x){
  return x * x * x * x;

}
function easeOutQuart(x){
  return 1 - Math.pow(1 - x, 4);

}
function easeInOutQuart(x){
  return x < 0.5 ? 8 * x * x * x * x : 1 - Math.pow(-2 * x + 2, 4) / 2;

}
function easeInQuint(x){
  return x * x * x * x * x;

}
function easeOutQuint(x){
  return 1 - Math.pow(1 - x, 5);

}
function easeInOutQuint(x){
  return x < 0.5 ? 16 * x * x * x * x * x : 1 - Math.pow(-2 * x + 2, 5) / 2;

}
function easeInExpo(x){
return x === 0 ? 0 : Math.pow(2, 10 * x - 10);

}
function easeInOutExpo(x) {
return x === 0
  ? 0
  : x === 1
  ? 1
  : x < 0.5 ? Math.pow(2, 20 * x - 10) / 2
  : (2 - Math.pow(2, -20 * x + 10)) / 2;

}
function easeInCirc(x){
return 1 - Math.sqrt(1 - Math.pow(x, 2));

}
function easeOutCirc(x) {
return Math.sqrt(1 - Math.pow(x - 1, 2));

}