

var array = [1, 2, 3, 4];
var newArray = [];


    
const reverseArray = (arr) => {
    for (var i = arr.length - 1; i >= 0; i--){
        newArray.push(arr[i]);
    }
    console.log(newArray);
 }

 reverseArray(array);

var array2 =  ["Hello", ["World", 42] ] ;


var flattened = [].concat.apply([],array2);

console.log(flattened);


function flatten(array) {
    let newArray = [];
    array.forEach((ele) => {
        if (Array.isArray(ele)) {
            newArray = newArray.concat(flatten(ele));
        } else {
            newArray.push(ele);
        }
    });
    return newArray;
}


const inputArray = ["hello", ["you", 37]]

console.log(flatten(inputArray));