// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

// describe("codeWord" , () => {
//     it("returns a string with a coded message", () => {
//         expect(codeWord(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
//         expect(codeWord(secretCodeWord2)).toEqual("G0bbl3dyg00k")
//         expect(codeWord(secretCodeWord3)).toEqual("3cc3ntr1c")
//     })
// })

// const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
// const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
// const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.

// const codeWord = (string) => {
//     let codedMessage = ""
//     for (let i = 0; i < string.length; i++) {
//         let char = string[i].toLowerCase()
//         switch (char) {
//             case 'a':
//                 codedMessage += '4';
//                 break;
//                 case 'e':
//                 codedMessage += '3';
//                 break;
//                 case 'i':
//                 codedMessage += '1';
//                 break;
//                 case 'o':
//                     codedMessage += '0';
//                     break;
//                     default:
//                     codedMessage += string[i]
//         }
//     }
// return codedMessage
// }

// console.log(codeWord(secretCodeWord1))
// console.log(codeWord(secretCodeWord2))
// console.log(codeWord(secretCodeWord3))


// fail: codeWord is not defined

// Pseudo code:
// Input: String
// Output: A string with a coded message
// Create a function that takes in a string
// Create a variable that holds an empty string
// make a for loop that iterates over each letter in the string
// use lower case to ensure each letter into a lower case
// use swtich to check each letter and replace it with the corresponding number
// Default handles the letters that don't have a secret code and returns the letter unchanged
// += adds the changed letter or unchanged letter to the empty string
// Return a string with the coded message

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

// describe("fullHouse", () => {
//     it("determines whether or not the array is a full hosue", () => {
//         expect(fullHouse(hand1)).toEqual([5, 5, 5, 3, 3])
//         expect(fullHouse(hand2)).toEqual([5, 5, 5, 3, 4])
//         expect(fullHouse(hand3)).toEqual([5, 5, 5, 5, 4])
//         expect(fullHouse(hand4)).toEqual([7, 2, 7, 2, 7])
//     })
// })

// Fail - fullHosue is not defined

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.

const fullHouse = (array) => {
    if (array.length !== 5) {
        return false;
    }
    const countMap = new Map();
    for (let num of array) {
        countMap.set(num, (countMap.get(num) || 0) + 1);
    }
    let pair = false;
    let threeOfAKind = false;
    for (let count of countMap.values()) {
        if (count === 2) {
            pair = true;
        } else if (count === 3) {
            threeOfAKind = true;
        }
    }
    return pair && threeOfAKind;
}

console.log(fullHouse(hand1))
console.log(fullHouse(hand2))
console.log(fullHouse(hand3))
console.log(fullHouse(hand4))

// Pseudo code:
// Input: Array of 5 numbers
// Output: Full house or not a full hosue
// Create a function that takes in an array
// Ensure the array is exactly 5 numbers otherwise return false
// Use countMap to count the occurrences of each number in the array
// The for each num in array iterates through each number and updates the count
// The second for loop checks to see if there is a count === 2 and a value ===3 if so set to true
// Use the && to make sure the array meets both expressions


// Somewhat grasped this one but the countMap isn't making 100% sense yet.
// Specificaly line 107 , 108, 109 and 113
