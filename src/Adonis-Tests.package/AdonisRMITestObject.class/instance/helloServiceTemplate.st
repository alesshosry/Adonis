as yet unclassified
helloServiceTemplate

^ 'import java.rmi.Remote;
import java.rmi.RemoteException;

public interface HelloService extends Remote{

	public String echo1(String input) throws RemoteException;
	
	public int calculateSum(int number1, int number2) throws RemoteException;
	
}'