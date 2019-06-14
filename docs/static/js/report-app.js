var zoom_factor=5;
var zoom_distance =.5;


function getDPI() {
  return document.getElementById("dpi").offsetHeight;
}

function Zoom(num){
    zoom_factor=num; 
    document.body.style.fontSize=zoom_factor+ 'mm';
}

function ZoomIn(){
    Zoom(zoom_factor + zoom_distance);
}

function ZoomOut(){
    if(zoom_factor< 3.5)return;
    Zoom(zoom_factor - zoom_distance);
}

function FitSize(){
    var dpi =getDPI();
    var page_width= $('page:first-child').width();
    var body_width= $('body').width();
    var scale= Math.round((100*body_width) / (page_width + (dpi / 4)))/100;
    Zoom(scale / 5.5);
}



$(document).ready(FitSize);
