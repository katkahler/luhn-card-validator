# luhn-card-validator

The luhn algorithm alters digits in a credit card number to prove the card's validity.

The process begins with a string of digits, let's use 79927398713. 
This boolean function (luhn) takes in this card string as an input, and first splits the string into an Integer List (digits) of separate digits. This output is now [7,9,9,2,7,3,9,8,7,1,3] 

Starting at the second to last element in the digits IntList, and going backwards by every other element (2), the new set of numbers is [1,8,3,2,9]. Each digit is then multiplied by 2, and if it is greater than 9, the two digits are added together.
Our new Integer List (splitDigits) of these values is [2, 7, 6, 4, 9].

All values in splitDigits are now added together to an integer "sum". The list goes from [2, 7, 6, 4, 9] to 28.
The other values in the original card (an IntList called otherDigits) are added to sum as well. The list goes from [3,7,9,7,9,7] to 42.

sum is now 28 + 42 = 70.

If that final sum is divisible by 10, the card number is valid. 70 % 10 = 7, so this card is valid. The function returns sum%10 = 0, and in setup, it is printed in the console whether or not the number is valid based on lunh(input)


This project was a quick creation to return to abstracting algorithms after doing lots of graphics work.
