as yet unclassified
helloServantTemplate

^ 'import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class HelloServant extends UnicastRemoteObject implements HelloService {

	protected HelloServant() throws RemoteException {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String echo1(String input) throws RemoteException {
		// TODO Auto-generated method stub
		return "From server:" + input;
	}

	@Override
	public int calculateSum(int number1, int number2) throws RemoteException {
		// TODO Auto-generated method stub
		return number1 + number2;
	}
	
}
'