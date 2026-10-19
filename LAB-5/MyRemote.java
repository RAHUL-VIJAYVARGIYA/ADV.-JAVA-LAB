import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class MyRemote extends UnicastRemoteObject implements MyInterface {

    public MyRemote() throws RemoteException {
        super();
    }

    public int add(int a, int b) {
        return a + b;
    }
}
