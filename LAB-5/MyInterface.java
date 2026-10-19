import java.rmi.Remote;
import java.rmi.RemoteException;

public interface MyInterface extends Remote {
    int add(int a, int b) throws RemoteException;
}
