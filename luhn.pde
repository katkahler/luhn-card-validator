String input = "79927398713";

void setup() {
  if (luhn(input)) {
    print("that's a valid card number!");
  } else {
    print("that's NOT a valid card number!");
  }
}

boolean luhn(String card) {
  IntList digits = new IntList();
  IntList splitDigits = new IntList();
  IntList otherDigits = new IntList();
  int sum = 0;

  // split card string into array of digits
  for (int i = 0; i < card.length(); i++) {
    digits.append(int(card.charAt(i)) - 48);
  }

  // creates an array list of every other element in digits[]
  for (int i = card.length()-2; i >= 0; i-=2) { 
    int value = digits.get(i)*2;
    // if multiplied number > 9, add digits together
    if (value > 9) {
      String digitString = str(value);
      value = int(digitString.charAt(0))- 48 + int(digitString.charAt(1)) - 48;
    }
    splitDigits.append(value);
  }

  // adding back other card digits
  for (int i = card.length()-1; i >= 0; i-=2) {
    otherDigits.append(digits.get(i));
  }

  // adding both lists together
  for (int i = 0; i < splitDigits.size(); i++) {
    sum += splitDigits.get(i);
  }
  for (int i = 0; i < otherDigits.size(); i++) {
    sum += otherDigits.get(i);
  }

  return sum%10 == 0;
}
