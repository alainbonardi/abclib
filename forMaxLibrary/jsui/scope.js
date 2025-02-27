 // JSUI code pour Max/MSP (Cycling '74)
// Affiche une fonction f(x) = 1 + sin(x) + cos(x) dans un repère circulaire
inlets = 1;
outlets = 2; 
autowatch = 1;

mgraphics.init(); 
mgraphics.autofill = 0; 
mgraphics.relative_coords = 0;
// Variables globales
var angleInDegrees = 90; // Angle piloté en degrés
var centerX = 103.4, centerY = 103.4;
var maxRadius = 100; // Rayon maximal pour la fonction

// Fonction appelée lors de la redimension de l'interface graphique
function onresize(w, h) {
	
    // Calculer le centre de la fenêtre
    centerX = w / 2 || 0;
    centerY = h / 2 || 0;

    // Calculer la taille minimale entre la largeur et la hauteur
    var minDimension = Math.min(w, h);

    // Ajuster le facteur de mise à l'échelle (radiusFactor) en fonction de la taille minimale
    // Utiliser 45% de la plus petite dimension pour l'échelle
    var scale = minDimension * 1;

    // Appliquer l'échelle calculée au facteur radiusFactor
    radiusFactor = Math.min(scale, maxRadius); // Limiter à maxRadius pour éviter un facteur trop grand

    mgraphics.redraw(); // Forcer un redessin
}

// Fonction principale de dessin
function paint() {
    var gfx = mgraphics;
    // Effacer le canvas
    gfx.set_source_rgba(0, 0, 0, 0); // Couleur de fond noire
    gfx.paint();    
	radiusFactor = 100;

    if (centerX === 0 || centerY === 0) {
        post("Erreur: le centre n'est pas correctement initialisé\n");
        return; // Sortir si le centre n'est pas initialisé
    }

    // Tracer les axes (entre 0 et 1)
    gfx.set_source_rgba(0, 0, 0, 0.5); // Couleur blanche translucide
    gfx.set_line_width(1);

    // Axe horizontal
    gfx.move_to(centerX - radiusFactor, centerY);
    gfx.line_to(centerX + radiusFactor, centerY);
    gfx.stroke();

    // Axe vertical
    gfx.move_to(centerX, centerY - radiusFactor);
    gfx.line_to(centerX, centerY + radiusFactor);
    gfx.stroke();

    gfx.set_line_width(1);
    gfx.set_source_rgba(0, 0, 0, 0.3); // Couleur gris clair pour les cercles

    for (var i = 0.2; i <= 1; i += 0.2) {
        gfx.arc(centerX, centerY, i * radiusFactor, 0, 2 * Math.PI);
        gfx.stroke();
    }

    // Tracer les marques sur l'axe X
    for (var i = -1; i <= 1; i += 0.2) {
        var xPos = centerX + i * radiusFactor; // Marque sur l'axe X
        gfx.move_to(xPos, centerY - 5);
        gfx.line_to(xPos, centerY + 5);
        gfx.stroke();
    }

    // Tracer les marques sur l'axe Y
    for (var i = -1; i <= 1; i += 0.2) {
        var yPos = centerY + i * radiusFactor; // Marque sur l'axe Y
        gfx.move_to(centerX - 5, yPos);
        gfx.line_to(centerX + 5, yPos);
        gfx.stroke();
    }
	radiusFactor = 67;
    // Tracer la fonction dans le repère polaire
    gfx.set_line_width(2);
    var prevX, prevY;

    for (var deg = 0; deg <= 360; deg++) {
        var rad = deg * Math.PI / 180; // Convertir en radians
		var rad2 = angleInDegrees * Math.PI / 180;
        var fx = 0.5+Math.sin(rad2)*Math.sin(rad) + Math.cos(rad2)*Math.cos(rad) ; // Calcul de la fonction
        var r = Math.abs(fx) * radiusFactor; // Échelle

        var x = centerX + r * Math.cos(rad); // Coordonnée X
        var y = centerY - r * Math.sin(rad); // Coordonnée Y (inversée en JSUI)

        // Définir la couleur en fonction du signe de f(x)
        if (fx >= 0) {
            gfx.set_source_rgba(1, 0, 0, 1); // Rouge pour les valeurs positives
        } else {
            gfx.set_source_rgba(0, 0, 1, 1); // Bleu pour les valeurs négatives
        }

        // Si ce n'est pas le premier point, on relie le point précédent au point actuel
        if (deg > 0) {
            gfx.move_to(prevX, prevY);
            gfx.line_to(x, y);
            gfx.stroke();
        }

        // Mémoriser les coordonnées du point actuel pour le prochain
        prevX = x;
        prevY = y;
    }
}

// Fonction pour recevoir les messages
function msg_float(value) {
    angleInDegrees = 90 + value % 360; // Limiter à 0-360 degrés
    //post("msg_float: angle = " + angleInDegrees + "\n");
    mgraphics.redraw(); // Redessiner l'interface
}