	 /**
	 *The following class named ‘Resource’ encapsulates the details and format of the Resources that
     * are held by students
	 */

package aosAssignment.classes;

import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

import aosAssignment.interfaces.ResourceInterface;

public class Resource extends UnicastRemoteObject implements ResourceInterface {

	
	private static final long serialVersionUID = 1L;
	int lockedBy=0;		//it has to be declared as global
	int resourceID;
	ResourceType resType;

	protected Resource() throws RemoteException {
		super();
		// TODO Auto-generated constructor stub
	}

	public void lock(int n) {
		
		if(lockedBy!=0)//we maintain loakedBy variable as Global
		 System.out.println("Resource is Held by" + lockedBy);
		else
			lockedBy=n;
		
		
	}

	public void release() {
		
		lockedBy=0;

	}

	public int getStatus() {
		if(resourceID==0) //Resource ID for Eraser is considered here as zero
		return 0 ;
		else return 1;
		 
		
	}
	public static void main(String args[]) throws MalformedURLException{
		try {
			Resource myResource=new Resource();
			Naming.rebind("rmi://myResource", myResource);
			
		} catch (RemoteException e) {
			
			e.printStackTrace();
		}
	}
	
	

}
