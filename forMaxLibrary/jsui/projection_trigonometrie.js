inlets = 1;
outlets = 2; 
autowatch = 1;

mgraphics.init(); 
mgraphics.autofill = 0; 
mgraphics.relative_coords = 1;

var precision = 4;
var width, height;
var radius = 0.05;
var x = 0, y = 0;

function cos(a, b) {
	r = Math.abs(Math.cos((a/180) * b * Math.PI));
	theta = a ; 
	x = r * Math.cos((a/180) * Math.PI);
	y = r * Math.sin((a/180) * Math.PI);
	x2 = Math.cos((a/180) * Math.PI);
	y2 = Math.sin((a/180) * Math.PI);
	mgraphics.redraw();
	}
	
function sin(a, b) {
	r = Math.abs(Math.sin((a/180) * b * Math.PI));
	theta = a ; 
	x = r * Math.cos((a/180) * Math.PI);
	y = r * Math.sin((a/180) * Math.PI);
	x2 = Math.cos((a/180) * Math.PI);
	y2 = Math.sin((a/180) * Math.PI);
	mgraphics.redraw();
	}

function field(a, b) {
	theta = (a/180) * Math.PI ; 
	r = Math.abs(1 + Math.sin(theta) + Math.cos(theta))/2;
	x = r * Math.cos(theta);
	y = r * Math.sin(theta);
	x2 = Math.cos(theta);
	y2 = Math.sin(theta);
	mgraphics.redraw();
	}

declareattribute("precision", null, "set_precision");

function paint() {
    //paint_grid();
    paint_curve();
}

function paint_curve() {
    // Définissez les coordonnées du système
with (mgraphics) {
	set_source_rgba(0, 0, 0, 1);
	arc(x , y, radius , 0, 6.28);
	fill();
	set_source_rgba(0, 0, 0, 1);
	arc(x2 , y2, radius , 0, 6.28);
	fill();
	move_to(x2, y2);
	line_to(0, 0);
	stroke();
	
	}
}

function paint_grid() {
    var radius = 1 / precision;
    var aspect = calcAspect();

    with (mgraphics) {
        set_source_rgba(1, 1, 1, 1);
        rectangle(-1 * aspect, 1, 2 * aspect, 2);
        fill();

        set_source_rgba(0.5, 0.5, 0.5, 1.0);
        set_line_width(0.005);

        move_to(0, 1.); 
        line_to(0, -1.); 
        move_to((1 * aspect), 0.);
        line_to((-1 * aspect), 0.);

        for (i = precision; i > 0; i--) {
            set_source_rgba(0.5, 0.5, 0.5, 1); 
            arc(0, 0, radius * i * aspect, 0, 6.28);
        }
        stroke();
    }
}

function calcAspect() {
    width = this.box.rect[2] - this.box.rect[0];
    height = this.box.rect[3] - this.box.rect[1];

    return width / height;
}

function set_precision(a) {
    if (a <= 0) {
        precision = 1;
    } else {
        precision = a; 
    }
    mgraphics.redraw();
}

function degreesToRadians(degrees) {
    return degrees * (Math.PI / 180);
}

function poltocar(a, b){
	
	}
    