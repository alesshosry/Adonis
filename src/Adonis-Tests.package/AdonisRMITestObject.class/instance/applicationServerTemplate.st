as yet unclassified
applicationServerTemplate

^ 'import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class ApplicationServer {

	public static void main(String args[]) throws RemoteException {
		
		Registry reg = LocateRegistry.createRegistry(5099);
		reg.rebind("hello", new HelloServant()); 
		
	}
	
}
'