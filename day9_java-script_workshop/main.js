//#1 workshop

function reverse_str(string){

    entry = string
    let entryArray = [];

    for (i=0; i < entry.length; i++){
        entryArray[i] = entry.charAt([i]);
        
    }
    let final = entryArray.reverse();
    total_final = final.join("");
    return total_final;

}

reverse_str("Scott Sutrisno");



