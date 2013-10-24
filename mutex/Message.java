/**
 * The following class named ‘Message’ encapsulates the details and format of the message that is 
 * exchanged among various students.
 */
package mutex;

class Message {

	int processID;					
	MessageType msgType;			
	Object msgContent;				

	public Message(int processID, MessageType msgType, Object msgContent){
		this.processID=processID;
		this.msgType=msgType;
		this.msgContent=msgContent;		
	}
	public int getProcessID(){
		return processID;
	}	
	public MessageType getMessageType(){
		return msgType;
	}
	public Object getMessageContent(){
		return msgContent;
	}
}
