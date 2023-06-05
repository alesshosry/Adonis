as yet unclassified
clientTemplate

^ 'import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;

public class Client {
	public static void main(String args[]) throws MalformedURLException, RemoteException, NotBoundException {
		HelloService service = (HelloService) Naming.lookup("rmi://localhost:5099/hello");
		System.out.println("---" + service.echo1("hey server"));
		System.out.println("Sum of 1 and 2 is equal to: " + service.calculateSum(1,2));
	}
}
'