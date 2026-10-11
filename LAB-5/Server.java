package rmi;
import java.rmi.Naming;

public class Server {
    public static void main(String[] args) {
        try {
            CalculatorImplementation calculator = new CalculatorImplementation();
            Naming.rebind("rmi://localhost/Calculator", calculator);
            System.out.println("Calculator service is running on rmi://localhost/Calculator");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}