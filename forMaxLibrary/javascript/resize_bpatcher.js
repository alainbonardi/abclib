var size = [0., 0., 0., 0.];

function list(l, h){
    var patcher = this.patcher.box;
    size[0] = patcher.rect[0];
    size[1] = patcher.rect[1];
    size[2] = patcher.rect[0]+l;
    size[3] = patcher.rect[1]+h;
    patcher.rect = size;
}