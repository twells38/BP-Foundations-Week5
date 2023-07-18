
// You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a function that takes the array as an argument and returns this “outlier” N.

// Examples:

// [2, 4, 0, 100, 4, 11, 2602, 36] Should return: 11 (the only odd number)

// [160, 3, 1719, 19, 11, 13, -21] Should return: 160 (the only even number)

function findOutlier(arr) {
    let oddArr = [] // store odd integers after iterate
    let evenArr = [] // store even integers after iterate
    for (let i = 0; i < arr.length; i++){
        if (arr[i] % 2 === 0) { //get even interger
            evenArr.push(arr[i])
        } else { //get odd integer
            oddArr.push(arr[i])
        }
    }
    if (oddArr.length === 1) { // check to return ourlier integer if length of arr is 1 
        return oddArr
    } else if (evenArr.length === 1) {
        return evenArr
    }
}
console.log(findOutlier([2, 4, 0, 100, 4, 11, 2602, 36]))
console.log(findOutlier([160, 3, 1719, 19, 11, 13, -21]))
