import java.rmi.Naming;
import java.rmi.registry.LocateRegistry;

public class Server {

    public static void main(String[] args) {
        try {
            try {
                LocateRegistry.createRegistry(1099);
            } catch (Exception ignored) {
            }

            MyRemote obj = new MyRemote();
            Naming.rebind("rmi://localhost/Add", obj);
            System.out.println("Server is ready...");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
