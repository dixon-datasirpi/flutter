import 'package:ds_attendence/addition.dart';
import 'package:ds_attendence/constructor.dart';

void main() {
  Addition add = Addition();
  var c = add.addTwoNumbers(10, 15);
  print(c);
  Constructor construct = Constructor();
  var subData = construct.subtraction(15, 10);
  print(subData);
}