void main() {
  const netSalary = 53000;
  const expense = 53000;
  if (netSalary > expense) {
    print('Your saved ${netSalary - expense} this month!');
  } else if (netSalary < expense) {
    print('Your lost ${expense - netSalary} this month!');
  } else {
    print('Your balance hasn\'t changed');
  }
}
