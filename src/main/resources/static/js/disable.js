function showhide(){
    var div = document.getElementById("sub");
    if(div.disabled==true){
        div.disabled=false
    }
    
}

function require(){

    document.getElementById("less").required=true;
    document.getElementById("normal").required=true;
    document.getElementById("proper").required=true;
    
}
