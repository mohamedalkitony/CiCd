
function great(name){

    return `Hello ${name}`
} ;

Module.exports = great;


if(require.main === module){
    console.log(great("World"));
}