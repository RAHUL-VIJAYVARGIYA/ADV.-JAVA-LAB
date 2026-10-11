package rmi;
import java.rmi.Naming;

public class Client {
    public static void main(String[] args) {
        try {
            Calculator calculator = (Calculator) Naming.lookup("rmi://localhost/Calculator");

            System.out.println("Addition: " + calculator.add(10.0, 5.0));
            System.out.println("Subtraction: " + calculator.subtract(10.0, 5.0));
            System.out.println("Multiplication: " + calculator.multiply(10.0, 5.0));
            System.out.println("Division: " + calculator.divide(10.0, 5.0));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}