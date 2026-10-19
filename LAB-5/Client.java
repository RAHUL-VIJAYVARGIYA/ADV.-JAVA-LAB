import java.rmi.Naming;

public class Client {

    public static void main(String[] args) {
        try {
            MyInterface obj = (MyInterface) Naming.lookup("rmi://localhost/Add");
            int result = obj.add(10, 20);
            System.out.println("Result = " + result);
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
