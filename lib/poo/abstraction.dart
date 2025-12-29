abstract class Payment{
  void processPayment();
  void chargeBack();
}

class Pix implements Payment{
  @override
  void processPayment() {
    print("Process payment for method PIX...");
  }
  
  @override
  void chargeBack() {
    print("file a chargeBack Pix");
  }
}

class CreditCard implements Payment{
  @override
  void processPayment() {
    print("Process payment for Credit Card...");
  }
  
  @override
  void chargeBack() {
    print("file a chargeBack Credit Card");
  }
}

void main(){
  Payment method = Pix();
  //Payment method = CreditCard();
  

  method.processPayment();
  method.chargeBack();
}