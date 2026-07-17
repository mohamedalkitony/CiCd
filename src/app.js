
function great(name){

    return `Hello ${name}`
} ;

module.exports = great;


if(require.main === module){
    console.log(great("World"));
}