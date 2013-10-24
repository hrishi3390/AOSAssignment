package mutex;
import java.util.*;
import java.rmi.*;

public interface StudentInterface extends Remote{
	void assignStudentsMap(HashMap studentsMap);
void messageBoxEntry(Message msg);
}