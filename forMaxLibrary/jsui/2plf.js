mgraphics.init();
mgraphics.autofill = 0;
mgraphics.relative_coords = 0; 
outlets = 3; 

var color = [0, 0.1, 0.25, 1], pointHitted, myPoints1 = [], myPoints2 = [], 
thickness = 3, radius = thickness * 1.5, i, width = this.box.rect[2] - this.box.rect[0], 
height = this.box.rect[3] - this.box.rect[1], interval, isItGrowing, intervalBefore = 0, 
x_c, y_c, slop, pointerActivation, line_data = [], out_pos1 = [], out_pos2 = [], 
out_value1 = [], out_value2 = [], out_color = [], deltasquared, duration = 1000;

init();

//-----------------------------------------------------------------------
//-----------------------------------------------------------------------
//init of the window with two points on each slope
function init() {
    
	myPoints1.splice(0, myPoints1.length);
    myPoints2.splice(0, myPoints2.length);

	for (i = 0; i < 2; i++) {

		myPoints1[i] = new point([0 + i, 0.5], 0.5, [0, 0.1, 0.25, 1], false);
        myPoints2[i] = new point([0 + i, 0.5], 0.5, [0.2, 0.2, 0.3, 0.4], false);
	}
    
	mgraphics.redraw();
}
//class which is called when we create points
function point(position, value, color, overcircle) {
		this.position = position;
		this.value = value;
		this.color = color;
		this.overcircle = overcircle;
}
//function which make 5 tab (value1, value2, color, pos1, pos2) and make out the values
function play(dur) {
    duration = dur; 
    out_pos1.splice(0, out_pos1.length);
    out_value1.splice(0, out_value1.length);
    out_color.splice(0, out_color.length);
    out_pos2.splice(0, out_pos2.length);
    out_value2.splice(0, out_value2.length);   
    for(i=0; i<myPoints1.length; i++){
        out_pos1[i] = myPoints1[i].position[0];
        out_value1[i] = myPoints1[i].position[1];
        out_color[i] = myPoints1[i].color[0]; 
    }
    for(i=0; i<myPoints2.length; i++){
        out_pos2[i] = myPoints2[i].position[0];
        out_value2[i] = myPoints2[i].position[1];
    }
    outlet(0, formatage(out_value1, out_pos1, dur));
    outlet(1, formatage(out_color, out_pos1,  dur));
    outlet(2, formatage(out_value2, out_pos2, dur));
}
//function called in 'onidle()', pointHitten take the index of the hitted point and slop take the number of the slop ; if no point is hitten, slop = 0 and pointHitten = "nothing
function isAPointHitted(x_c, y_c) {
//Check the first curve
    for (i = 0; i < myPoints1.length; i++) {
		x = whereIsMyPoint(myPoints1[i].position[0], "x");
		y = whereIsMyPoint(myPoints1[i].position[1], "y");
		deltasquared = (x_c - x) * (x_c - x) + (y_c - y) * (y_c - y);
        
		  if (deltasquared < radius*radius) {

                myPoints1[i].overcircle = true;
                pointHitted = i ; 
                slop = 1; 
                mgraphics.redraw();
                return     
          } else 
                myPoints1[i].overcircle = false; 
                slop = 0;
        }
//Check the second curve
    for(i = 0; i < myPoints2.length; i++){
        x = whereIsMyPoint(myPoints2[i].position[0], "x");
		y = whereIsMyPoint(myPoints2[i].position[1], "y");
        deltasquared = (x_c - x) * (x_c - x) + (y_c - y) * (y_c - y);
        
		  if (deltasquared < radius*radius) {

                myPoints2[i].overcircle = true;
                pointHitted = i ; 
                mgraphics.redraw();
                slop = 2;
                return     
          } else 
                slop = 0;
                myPoints2[i].overcircle = false;  
    }
//if no point is hitted
pointHitted = "nothing"; 
slop = 0;
}
//Print a cross on the screen if the shift touch is on
function pointer(x, y, pointerActivation) {
    if(pointerActivation==1){
        with (mgraphics) {
		set_source_rgba(0., 0., 0., 1);	
		set_line_width(0.5);	
		move_to(x, 0);
		line_to(x, height);
		stroke();
		move_to(0, y);
		line_to(width, y);
		stroke();
		set_source_rgba(0., 0., 0., 1);	
		set_line_width(0.4);
            
            if(y < (height/2) && x > width/2){
               move_to(x-100, y+10);  
               } else if (y < (height/2)) {
                   move_to(x, y+10)
               } else if (x > width/2) {
                   move_to(x-100, y)
               } else
                   move_to(x, y)
		
		//var str = " x : "+Math.round((x/width)*duration)+" y : "+Math.round((1-(y/height))*100); 
        var str = " x : "+Math.round((x/width)*duration)+" y : "+Math.round((1-(y/height))*100)/100; 
		text_path(str);
		stroke();
        refresh();
        }
    }
}
//-----------------------------------------------------------------------
//---------------Functions to manipulate datas --------------------------
//-----------------------------------------------------------------------
//Translate the relative position in screen coordinates
function whereIsMyPoint(posRelative, axis) {

	if(axis === "x"){
		return posRelative * width 
	} else if (axis === "y") {
		return height - posRelative * height
	}
} 
function zmap(input, inlow, inhigh, outlow, outhigh) {
	var indiff = inhigh - inlow;
	var outdiff = outhigh - outlow;
	var inscale;
	var value;
	
	if (input == Number.NEGATIVE_INFINITY)
	 	input = inlow * 1000000.0;
	else if (input == Number.POSITIVE_INFINITY)
	 	input = inhigh * 1000000.0;

	if (indiff != 0.0)
		inscale = 1.0 / indiff;
	else
		inscale = 1.0;
	value = (input - inlow) * inscale;
	return (value * outdiff) + outlow;
}
//Clip the input between a min and a max value
function clip(input, min, max) {
return Math.min(max, Math.max(min, input))
}
//Makes the degrade between two points if they have different colors
function degrade(x, y, i) {
	with(mgraphics){
							
	var x2 = whereIsMyPoint(myPoints1[i+1].position[0], "x");
	var y2 = whereIsMyPoint(myPoints1[i+1].position[1], "y");
	var myColor = myPoints1[i].color[0];
	var current_x = x; //position initiale en x
	var current_y = y; //position initiale en y 
	var step_r = (myPoints1[i+1].color[0]-myPoints1[i].color[0])/500; 
	var step_x = (x2 - x) / 500 ; //pas pour faire la distance en nmbrEtapes
	var step_y = (y2 - y) / 500 ; 

		for(var j = 0; j<500; j++){		

			myColor += step_r;	
		
			current_x += step_x ;
			current_y += step_y ;
            
			set_source_rgba([myColor, 0.1, 0.25, 1]); 
    		line_to(current_x, current_y);
			stroke();
            move_to(current_x, current_y);
		}
  	}
}
//Formates the data for the line object use
function formatage(in1, in2, durGlobale) {
	
	line_data = [];
	var dur_passed  = 0, time_interval = 0; 

	for(i=0; i < in1.length ; i++){

		line_data[i*2] = in1[i];

		//le temps passé soustrait à la position du point entre 0 et 1 
		//multiplié par la durée de l'interprétation totale
		time_interval = (in2[i] * durGlobale) - dur_passed ;
		
		line_data[(i*2)+1] = time_interval ;
		
		dur_passed += time_interval;

		}

return line_data; 
}
//Sort the array of points in ascendent order
function sort(tab) {
    var changed;
    do{
        changed = false;
        for(i=0; i < tab.length-1; i++) {
            if(tab[i].position[0] > tab[i+1].position[0]) {
                var tmp = tab[i];
                tab[i] = tab[i+1];
                tab[i+1] = tmp;
                changed = true;
            }
        }
    } while(changed);
}
//Return 1 if its defined and 0 if its not
function isItDefined(x) {
    return x !== undefined
} 
//-----------------------------------------------------------------------
//---------------JSUI & Mgraphics Function ------------------------------
//-----------------------------------------------------------------------
function paint() {
		with (mgraphics) {
        set_source_rgba(1,1,1,1); 
		rectangle(0.1, 0, width, height);
		fill(); 
		set_line_width(thickness);
//-----------------------Paint the points (1st curve) -------------------
//-----------------------------------------------------------------------
		for (i = 0; i < myPoints1.length - 1; i++) {

			if (myPoints1[i].color[0] == myPoints1[i+1].color[0]) {

				x = whereIsMyPoint(myPoints1[i].position[0], "x") ;
				y = whereIsMyPoint(myPoints1[i].position[1], "y") ;
				x2 = whereIsMyPoint(myPoints1[i+1].position[0], "x") ;
				y2 = whereIsMyPoint(myPoints1[i+1].position[1], "y") ;

				set_source_rgba(myPoints1[i].color);
				move_to(x, y);
				line_to(x2, y2);
				stroke();

				move_to(x, y);
//Ellipse(horizontal origin, vertical origin, width, height)
				if (myPoints1[i].overcircle) {
					set_source_rgba(1, 1, 1, 1);
					ellipse(x - (radius*1.5), y - (radius*1.5), radius * 3, radius * 3);
					fill();
					set_source_rgba(myPoints1[i].color);
					ellipse(x - (radius*1.5), y - (radius*1.5), radius * 3, radius * 3);
				} else {
					set_source_rgba(1, 1, 1, 1);
					ellipse(x - radius, y - radius, radius * 2, radius * 2);
					fill();
					set_source_rgba(myPoints1[i].color);
					ellipse(x - radius, y - radius, radius * 2, radius * 2);
				}
				stroke();

			} else {
                x = whereIsMyPoint(myPoints1[i].position[0], "x") ;
				y = whereIsMyPoint(myPoints1[i].position[1], "y") ;
                move_to(x, y);
                degrade(x, y, i);
                move_to(x, y);
                if (myPoints1[i].overcircle) {
					set_source_rgba(1, 1, 1, 1);
					ellipse(x - radius - thickness, y - radius - thickness, radius * 3, radius * 3);
					fill();
					set_source_rgba(myPoints1[i].color);
					ellipse(x - radius - thickness, y - radius - thickness, radius * 3, radius * 3);
                    stroke();
				} else {
					set_source_rgba(1, 1, 1, 1);
					ellipse(x - radius, y - radius, radius * 2, radius * 2);
					fill();
					set_source_rgba(myPoints1[i].color);
					ellipse(x - radius, y - radius, radius * 2, radius * 2);
                    stroke();
				}
            }
		}
//-----------------------Paint the last point (1st curve) ---------------
//-----------------------------------------------------------------------
		x = whereIsMyPoint(myPoints1[myPoints1.length-1].position[0], "x") ;
		y = whereIsMyPoint(myPoints1[myPoints1.length-1].position[1], "y") ;
		move_to(x, y);

		if (myPoints1[i].overcircle) {
            set_source_rgba(1, 1, 1, 1);
            ellipse(x - radius, y - radius - thickness, radius * 3, radius * 3);
            fill();
            set_source_rgba(myPoints1[myPoints1.length-1].color);
			ellipse(x - radius, y - radius - thickness, radius * 3, radius * 3);
		} 
            else {
            set_source_rgba(1, 1, 1, 1);
			ellipse(x - radius, y - radius, radius * 2, radius * 2);
			fill();
            set_source_rgba(myPoints1[myPoints1.length-1].color);
			ellipse(x - radius, y - radius, radius * 2, radius * 2);
                
		}
		stroke();
        pointer(x_c, y_c, pointerActivation);   
//-----------------------Paint the points (2st curve) -------------------
//-----------------------------------------------------------------------            
        for (i = 0; i < myPoints2.length - 1; i++) {
            
            set_line_width(1);
            x = whereIsMyPoint(myPoints2[i].position[0], "x") ;
            y = whereIsMyPoint(myPoints2[i].position[1], "y") ;
            x2 = whereIsMyPoint(myPoints2[i+1].position[0], "x") ;
            y2 = whereIsMyPoint(myPoints2[i+1].position[1], "y") ;
            set_source_rgba(myPoints2[i].color);
            move_to(x, y);
            line_to(x2, y2);
            stroke();
            
            move_to(x, y);

				if (myPoints2[i].overcircle) {
					set_source_rgba(1, 1, 1, 1);
					ellipse(x - radius, y - radius, radius * 2, radius * 2);
					fill();
					set_source_rgba(myPoints2[i].color);
					ellipse(x - radius, y - radius, radius * 2, radius * 2);
				} 
                else {
					set_source_rgba(1, 1, 1, 1);
					ellipse(x - (radius*0.75), y - (radius*0.75), radius * 1.5, radius * 1.5);
					fill();
					set_source_rgba(myPoints2[i].color);
					ellipse(x - (radius*0.75), y - (radius*0.75), radius * 1.5, radius * 1.5);
				}
				stroke();
			}
//-----------------------Paint the last point (2st curve) ---------------
//-----------------------------------------------------------------------
		x = whereIsMyPoint(myPoints2[myPoints2.length-1].position[0], "x") ;
		y = whereIsMyPoint(myPoints2[myPoints2.length-1].position[1], "y") ;
		move_to(x, y);

		if (myPoints2[i].overcircle) {
            set_source_rgba(1, 1, 1, 1);
            ellipse(x - radius, y - radius, radius * 2, radius * 2);
            fill();
            set_source_rgba(myPoints2[myPoints2.length-1].color);
			ellipse(x - radius, y - radius, radius * 2, radius * 2);
		} 
            else {
            set_source_rgba(1, 1, 1, 1);
            ellipse(x - (radius*0.75), y - (radius*0.75), radius * 1.5, radius * 1.5);
            fill();
            set_source_rgba(myPoints2[myPoints2.length-1].color);
			ellipse(x - (radius*0.75), y - (radius*0.75), radius * 1.5, radius * 1.5);
		}
		stroke();
        pointer(x_c, y_c, pointerActivation);
	}
}
function onresize(w, h) {
	width = this.box.rect[2] - this.box.rect[0]; 
 	height = this.box.rect[3] - this.box.rect[1];
	mgraphics.redraw();
}
function onclick(x, y, but, cmd, shift, capslock, option, ctrl) {
    if (slop  == 1){
        if (pointHitted > 0 && pointHitted < myPoints1.length - 1 ) {
                myPoints1[pointHitted].position = [clip(x / width, myPoints1[pointHitted-1].position[0], myPoints1[pointHitted+1].position[0]), clip(1 - (y / height), 0, 1) ];
        } else 
            myPoints1[pointHitted].position[1] = 1 - (y / height);
        
    } else if (slop == 2) {
            if (pointHitted > 0 && pointHitted < myPoints2.length - 1){
                myPoints2[pointHitted].position = [x / width, 1 - (y / height) ];
            } else 
                myPoints2[pointHitted].position[1] = 1 - (y / height);
    }
}
function ondrag(x, y, but, cmd, shift, capslock, option, ctrl) { 
    
    pointerActivation = shift; 
    x_c = x;
    y_c = y;
    
       if (slop == 1) { 
           if (cmd == 1){
            
            interval = (whereIsMyPoint(myPoints1[pointHitted].position[0], "x")-x) + (whereIsMyPoint(myPoints1[pointHitted].position[1], "y")-y); 
            isItGrowing = interval - intervalBefore;	
            myPoints1[pointHitted].color[0] = clip(myPoints1[pointHitted].color[0] + (0.01*Math.min(1, Math.max(-1, isItGrowing))), 0, 1);
               
            refresh();  
            intervalBefore = interval;
        } else {
            
            if (isItDefined(myPoints1[pointHitted - 1]) && isItDefined(myPoints1[pointHitted + 1])){
                
            myPoints1[pointHitted].position = [clip((x / width), myPoints1[pointHitted-1].position[0], myPoints1[pointHitted+1].position[0]), clip(1 - (y / height), 0, 1)];
            refresh();
            } else {
                myPoints1[pointHitted].position[1] = clip(1 - (y / height), 0, 1);
                refresh();    
            }
        }
       } else if(slop == 2) {
            
            if (isItDefined(myPoints2[pointHitted - 1]) && isItDefined(myPoints2[pointHitted + 1])){
            myPoints2[pointHitted].position = [clip((x / width), myPoints2[pointHitted-1].position[0], myPoints2[pointHitted+1].position[0]), clip(1 - (y / height), 0, 1)];
            refresh();
            } else {
            myPoints2[pointHitted].position[1] = clip(1 - (y / height), 0, 1);
            refresh(); 
            }
       }
notifyclients();
}
function onidle(x, y, but, cmd, shift, capslock, option, ctrl) {
    isAPointHitted(x, y);
    x_c = x;
    y_c = y;
    pointerActivation = shift;
    refresh();
}
function onidleout(x, y, but, cmd, shift, capslock, option, ctrl) {

if(isItDefined(myPoints1[pointHitted])){myPoints1[pointHitted].overcircle = false ;}
mgraphics.redraw();

}
function ondblclick(x, y, but, cmd, shift, capslock, option, ctrl) {
    
    if(option){
        if (pointHitted == "nothing") {
        
        myPoints2.push(new point([x/width, (1-(y/height))], (1-(y/height)), [0.2, 0.2, 0.3, 0.4], false));
        sort(myPoints2);
        
        } else 
                myPoints2.splice(pointHitted, 1);
                pointHitted = "nothing";
                mgraphics.redraw();
    } else {
        
        if (pointHitted == "nothing") {
        
        myPoints1.push(new point([x/width, (1-(y/height))], (1-(y/height)), [0, 0.1, 0.25, 1], false));
        sort(myPoints1);
        
        } else 
                myPoints1.splice(pointHitted, 1);
                pointHitted = "nothing";
                mgraphics.redraw();
    }
    notifyclients();
}
//-----------------------------------------------------------------------
//---------------Getter & Setter for Pattrstorage use--------------------
//-----------------------------------------------------------------------
function getvalueof() {
	var a = new Array();
    var val_s1 = myPoints1.length * 3;
    var val_s2 = myPoints2.length * 2;
	a[0] = myPoints1.length;
    a[val_s1+1] = myPoints2.length;
    var j = 0; 
	for (i = 1 ; i<val_s1+1; i++) {
		a[i] = myPoints1[j].position[0] ;
        a[i+1] = myPoints1[j].position[1] ;
        a[i+2] = myPoints1[j].color[0] ;
        j+= 1;
        i+= 2; 
	}
    j = 0; 
    for (i = (val_s1+2); i < (val_s1 + val_s2 + 2); i++) {
		a[i] = myPoints2[j].position[0] ;
        a[i+1] = myPoints2[j].position[1] ;
        i+= 1; 
        j+=1;
	}
	if (a.length == 0)
		a[a.length] = "none";
	return (a);
}
function setvalueof() {
    myPoints1.splice(0, myPoints1.length);
    myPoints2.splice(0, myPoints2.length);
    
    var val_s1 = arguments[0]*3;
    var val_s2 = arguments[val_s1+1] * 2;
    
    j = 0;
	for (var i = 1; i < val_s1 + 1; i ++) {
        myPoints1[j] = new point([arguments[i], arguments[i+1]], arguments[i+1], 
                                 [arguments[i+2], 0.1, 0.25, 1], false);
        i +=2;
        j += 1;
	}
    j = 0;
    for (var i = val_s1+2; i < val_s1 + val_s2 + 2; i ++) {
		myPoints2[j] = new point([arguments[i], arguments[i+1]], arguments[i+1],
                                 [0.2, 0.2, 0.3, 0.4], false);
        i +=1;
        j +=1;
	}
	
	mgraphics.redraw();
}