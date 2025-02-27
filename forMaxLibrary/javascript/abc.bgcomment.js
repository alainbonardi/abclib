// Fonction pour vérifier la version de Max
function getMaxMajorVersion() {
    var version = max.version; // Ex: "8.5.4" ou "9.0.1"
    return version; // Extrait "8" ou "9"
}

// Fonction pour changer la couleur de fond des comments
function changeCommentBgColor() {
    var majorVersion = getMaxMajorVersion();
    var color = [1.0, 1.0, 1.0, 1.0]; // Blanc par défaut

    if (majorVersion >= 900) {
        color = [1.0, 1.0, 1.0, 0.0]; // Transparent si Max 9
    }

    var patcher = this.patcher;
    var obj = patcher.firstobject;

    while (obj) {
        if (obj.maxclass === "comment") {
            obj.message("bgcolor", color[0], color[1], color[2], color[3]);
        }
        obj = obj.nextobject;
    }
}

function loadbang(){
changeCommentBgColor();
}