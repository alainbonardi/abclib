inlets = 1;
outlets = 2;
autowatch = 1; //Compile automatically if the file is saved in an external text editor
mgraphics.init(); //Init the mgraphics context
mgraphics.autofill = 0; //Dont fill automatically the geometry 
mgraphics.relative_coords = 1;//Relative coords  (-1*width, -1) left bottom (1*width, 1) right top 
var circles = [], //table of objects
    circleHitten = 0, //The index of the hitten circle by the cursor   
    precision = 4, //precision of the grid
    cursorInterval, //interval between the cursor and the circle hitten
    cursorIntervalBefore = 0, //storage of the interval at a time
    isItGrowing, //desc&asc test for the mouvement of the cursor
    width, //Width of the UI defined by the function calcAspect
    height, //Height of the UI defined by the function calcAspect
    outForDump = [], //Array of all attributs of circles
    howManyCircles = 0, //Number of circles we already print
    buffer_radiusAsc,
    buffer_radiusDesc,
    buffer_colourAsc,
    buffer_colourDesc,
    alreadyPressSomething = 0,
    cursorOffset = [],
    mode = "polar",
    toDelete,
    opacityAmount, //Buffer for the print colour
    i; //An index for the iterative loops

declareattribute("precision", null, "set_precision"); //Attribute which can be accessed by the inspector
declareattribute("mode", null, "set_mode"); //Attribute which can be accessed by the inspector
//----------------------------------------------//
//----------------- FUNCTIONS ------------------//
//----------------------------------------------//
//Add n circles on the grid 
function add(n) {
    if (arguments.length >= 1) {
        //Store the number of circles before the beginning of the loop "for"
        howManyCircles = circles.length;
        //Index used to diffuse the circles around a area 
        var j = 0;
        for (i = howManyCircles; i < (howManyCircles + n); i++) {
            //The last item in the array is the highest label
            //Declaration of the n sources
            if (circles.length === 0) {
                //Declaration of the source
                circles[0] = {
                    name: 1,
                    radiusP: 0.1,
                    radiusO: 0,
                    opacity: 0,
                    color: [0.5, 0.5, 0.5, 0.7],
                    center: [0., 0.],
                    overcircle: false
                }
            } else {
                circles[i] = {
                    name: circles[i - 1].name + 1,
                    radiusP: 0.1,
                    radiusO: 0,
                    opacity: 0,
                    color: [0.5, 0.5, 0.5, 0.7],
                    center: [(0.3 * Math.cos(Math.PI * 2 * (j / n))), (0.3 * Math.sin(Math.PI * 2 * (j / n)))],
                    overcircle: false
                };
            }
            out("dump", (circles.length - 1));
            j += 1;
        }

    } else if (arguments.length === 0) {
        if (circles.length === 0) {
            //Declaration of the source
            circles[0] = {
                name: 1,
                radiusP: 0.1,
                radiusO: 0,
                opacity: 0,
                color: [0.5, 0.5, 0.5, 0.7],
                center: [0., 0.],
                overcircle: false
            };
        } else {
            howManyCircles = circles.length;
            circles[circles.length] = {
                name: circles[circles.length - 1].name + 1,
                radiusP: 0.1,
                radiusO: 0,
                opacity: 0,
                color: [0.5, 0.5, 0.5, 0.7],
                center: [0, 0],
                overcircle: false
            };
        }
        out("dump", (circles.length - 1));
        howManyCircles += 1;
    }

    notifyclients(); //Notifies any clients (such as the pattr family of objects), that the object’s current value has changed. 
    mgraphics.redraw();
}
//Delete one or n circles
function del(n) {

    if (arguments.length > 0) {
        for (i = 0; i < arguments.length; i++) {
            toDelete = arguments[i];
            const buffer = circles.filter(deleteTheGoodOne);
            if (circles.length > buffer.length) {
                circles = buffer;
                outForDump[arguments[i] * 4 - 1] = 0;
                outForDump[arguments[i] * 4 - 2] = 0;
                outForDump[arguments[i] * 4 - 3] = 0;
                outForDump[arguments[i] * 4 - 4] = 0;
            }
        }
        refresh();
    } else if (arguments.length === 0) {
        howManyCircles = 0;
        circles.splice(0, circles.length);
        outForDump.splice(0, outForDump.length);
        notifyclients(); //Notifies any clients (such as the pattr family of objects), that the object’s current value has changed. 
        mgraphics.redraw();
    }
    circleHitten = 0;
    notifyclients();
}
//Callback to find if there is a label corresponding to the circle we want to delete
function deleteTheGoodOne(item) {

    return item.name !== toDelete;
}
//Painting of the grid circular system
function paint_grid() {

    var radius = 1 / precision, //Radius of the elementary circle
        aspect = calcAspect(); //Dimensions of the window

    with (mgraphics) {
        set_source_rgba(1, 1, 1, 1); //White
        rectangle(-1 * aspect, 1, 2 * aspect, 2);//rectangle(x, y, width, high) make the background
        fill(); //Fill the rectangle 
        set_source_rgba(0.5, 0.5, 0.5, 1.0); // Black
        set_line_width(0.005); // Width of the line
        //Make the x y axis
        move_to(0, 1.);
        line_to(0, -1.);
        move_to((1 * aspect), 0.);
        line_to((-1 * aspect), 0.);
        //Make the circles 
        for (i = precision; i > 0; i--) {
            set_source_rgba(0.5, 0.5, 0.5, 1);
            arc(0, 0, radius * i * aspect, 0, 6.28);
        }
        stroke(); //Draw the context
    }
}
//Function to calculate the dimensions of the UI window
function calcAspect() {

    width = this.box.rect[2] - this.box.rect[0];
    height = this.box.rect[3] - this.box.rect[1];

    return width / height

}
//Clip
function clip(input, min, max) {

    return Math.min(max, Math.max(min, input))
}
//----------------------------------------------//
//--------------- GETTER SETTER ----------------//
//----------------------------------------------//
function set_precision(a) {

    if (a <= 0) {
        precision = 1;
    }
    else precision = a;
    mgraphics.redraw();
}
function set_mode(a) {

    if (a == "polar") {
        mode = "polar";
    } else if (a == "cartesian") {
        mode = "cartesian";
    }
    out("coordinate", circleHitten);
}
function getvalueof() {

    var a = new Array();
    i = 0;
    for (i in circles) {
        a[a.length] = circles[i].name;
        a[a.length] = circles[i].radiusO;
        a[a.length] = circles[i].opacity;
        a[a.length] = circles[i].center[0];
        a[a.length] = circles[i].center[1];
    }
    if (a.length == 0)
        a[a.length] = "none";

    return (a);
}
function setvalueof() {

    circles.splice(0, circles.length);
    outForDump.splice(0, outForDump.length);
    j = 0;

    for (i = 0; i < arguments.length; i++) {

        circles[j] = {
            name: arguments[i],
            radiusP: 0.1,
            radiusO: arguments[i + 1],
            opacity: arguments[i + 2],
            center: [arguments[i + 3], arguments[i + 4]],
            color: [0.5, 0.5, 0.5, 0.7],
            overcircle: false
        };

        out("dump", j);
        i += 4;
        j += 1;
    }
    circleHitten = 0;
    mgraphics.redraw();
}
function print() {

    post(circles[0].name, circles[1].name);
}
//----------------------------------------------//
//--------------- ROUTINE FUNCTIONS ------------//
//----------------------------------------------//
function paint() {

    paint_grid();

    for (i = 0; i < circles.length; i++) {

        with (mgraphics) {

            opacityAmount = 0.5 - (circles[i].opacity / 200.);
            circles[i].radiusP = (circles[i].radiusO / 200.) + 0.1;
            circles[i].color = [opacityAmount, opacityAmount, opacityAmount, 0.7];

            if (circles[i].overcircle) {
                set_font_size(8);
                set_source_rgba(0., 0., 0., 1.);
                move_to(circles[i].center[0] - 0.25, circles[i].center[1] + 0.05);
                show_text(circles[i].opacity + " %");
                move_to(circles[i].center[0] - 0.25, circles[i].center[1] - 0.05);
                show_text(circles[i].radiusO + " %")
                //Color if the circle is hitten
                set_source_rgba(circles[i].color[0], circles[i].color[1] + 0.1, circles[i].color[2] + 0.1, circles[i].color[3]);

                //Print value of the parameter un percent
            } else { //Color if the circle is not hitten

                set_source_rgba(circles[i].color);
            }

            ellipse(circles[i].center[0] - circles[i].radiusP, circles[i].center[1] + circles[i].radiusP, 2 * circles[i].radiusP, 2 * circles[i].radiusP);
            fill();
            set_font_size(13);
            set_source_rgba(1., 1., 1., 1.);
            move_to(circles[i].center[0] - 0.03, circles[i].center[1] - 0.03);
            show_text(String(circles[i].name));
        }
    }
    outlet(1, outForDump);
}
//Function to test which source is hitted 
function hittest(x, y) {

    var cursorPosition = sketch.screentoworld(x, y);

    for (i = 0; i < circles.length; i++) {

        var deltasquared = (cursorPosition[0] - circles[i].center[0]) * (cursorPosition[0] - circles[i].center[0]) + (cursorPosition[1] - circles[i].center[1]) * (cursorPosition[1] - circles[i].center[1]);

        if (deltasquared < (circles[i].radiusP * circles[i].radiusP)) {
            //if the circle hitted is different from the last which was hitted
            if (circleHitten != i) {
                //the circle precedently hitted will not be overcicle anymore
                circles[circleHitten].overcircle = false;
                circleHitten = i;
            }
            return 1
        }
    }
    return 0
}
function onclick(x, y) {

    var cursorPosition = sketch.screentoworld(x, y);
    cursorOffset[0] = circles[circleHitten].center[0] - cursorPosition[0];
    cursorOffset[1] = circles[circleHitten].center[1] - cursorPosition[1];
    circles[circleHitten].center[0] = cursorPosition[0] + cursorOffset[0];
    circles[circleHitten].center[1] = cursorPosition[1] + cursorOffset[1];
    alreadyPressSomething = 0;
    notifyclients(); //Notifies any clients (such as the pattr family of objects), that the object’s current value has changed. 
    refresh();

}
function ondrag(x, y, button, cmd, shift, caps, opt, ctrl) {

    var cursorPosition = sketch.screentoworld(x, y);
    //Distance between the center of circle and the cursor
    cursorInterval = (cursorPosition[0] - circles[circleHitten].center[0]) + (cursorPosition[1] - circles[circleHitten].center[1]);
    //Is the distance between the center and the cursor is increasing ? 
    isItGrowing = cursorInterval - cursorIntervalBefore;

    buffer_radiusAsc = circles[circleHitten].radiusO + 2;
    buffer_radiusDesc = circles[circleHitten].radiusO - 2;
    buffer_colourAsc = circles[circleHitten].opacity + 2;
    buffer_colourDesc = circles[circleHitten].opacity - 2;

    if (opt) {
        if (isItGrowing > 0 && buffer_radiusAsc <= 100) {

            circles[circleHitten].radiusO = buffer_radiusAsc;
            out("radius", circleHitten);

        } else if (isItGrowing < 0 && buffer_radiusDesc >= 0) {

            circles[circleHitten].radiusO = buffer_radiusDesc;
            out("radius", circleHitten);

        }
        alreadyPressSomething = 1;
        cursorIntervalBefore = cursorInterval;

    } else if (cmd) {

        if (isItGrowing > 0 && buffer_colourAsc <= 100) {

            circles[circleHitten].opacity = buffer_colourAsc;
            out("opacity", circleHitten);

        } else if (isItGrowing < 0 && buffer_colourDesc >= 0) {

            circles[circleHitten].opacity = buffer_colourDesc;
            out("opacity", circleHitten);
        }
        alreadyPressSomething = 1;
        cursorIntervalBefore = cursorInterval;

    } else if (alreadyPressSomething == 0) {

        circles[circleHitten].center[0] = clip((cursorPosition[0] + cursorOffset[0]), -1., 1.);
        circles[circleHitten].center[1] = clip((cursorPosition[1] + cursorOffset[1]), -1., 1.);
        out("coordinate", circleHitten);

    }
    refresh();
    notifyclients(); //Notifies any clients (such as the pattr family of objects), that the object’s current value has changed. 
}
function onidle() {

    if (!circles[circleHitten].overcircle) {
        circles[circleHitten].overcircle = true;
        mgraphics.redraw();
    }
}
function onidleout() {

    circles[circleHitten].overcircle = false;
    mgraphics.redraw();
}
function cartopol(x, y) {

    // Calculer la distance r depuis l'origine (0, 0)
    const r = Math.sqrt(x * x + y * y);
    // Calculer l'angle theta en radians
    var theta = Math.atan2(y, x);
    // Ajuster l'angle theta pour qu'il soit dans l'intervalle de 0 à 2π
    if (theta < 0) {
        theta += 2 * Math.PI;
    }
    // Décaler l'angle theta de 3π/2 pour correspondre à votre exigence
    theta += (3 * Math.PI) / 2;
    // Assurer que l'angle reste dans l'intervalle de 0 à 2π
    if (theta >= 2 * Math.PI) {
        theta -= 2 * Math.PI;
    }
    const polarCoordinates = {
        theta: theta,
        r: r
    };
    // Retourner les coordonnées polaires (theta, r)
    return polarCoordinates;
}
function out(data, circle) {

    if (data == "radius") {
        outlet(0, "/circle/" + circles[circle].name + "/radius", circles[circle].radiusO);
    } else if (data == "opacity") {
        outlet(0, "/circle/" + circles[circle].name + "/opacity", circles[circle].opacity);
    } else if (data == "coordinate") {
        if (mode == "polar") {
            outlet(0, "/circle/" + circles[circle].name + "/pol", cartopol(circles[circle].center[0], circles[circle].center[1]).r, cartopol(circles[circle].center[0], circles[circle].center[1]).theta);
        } else {
            outlet(0, "/circle/" + circles[circle].name + "/xy", circles[circle].center[0], circles[circle].center[1]);
        }
    }
    if (mode == "polar") {
        outForDump[((circles[circle].name) * 4) - 4] = cartopol(circles[circle].center[0], circles[circle].center[1]).r;
        outForDump[((circles[circle].name) * 4) - 3] = cartopol(circles[circle].center[0], circles[circle].center[1]).theta;
    } else {
        outForDump[((circles[circle].name) * 4) - 4] = circles[circle].center[0];
        outForDump[((circles[circle].name) * 4) - 3] = circles[circle].center[1];

    }
    outForDump[((circles[circle].name) * 4) - 2] = circles[circle].radiusO;
    outForDump[((circles[circle].name) * 4) - 1] = circles[circle].opacity;
}