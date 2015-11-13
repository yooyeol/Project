package board;


public class BoardBean {
	/*member*/
	
	private String MemberName;
	
	private String MemberEmail;     
	
	private int MessageID;
	private String MessageTitle;        
	private String MessageContent;      
	private String MessagePostDate;     
	private int MessageSiteGrade;            
	private int MessageGoodCount;        
	private int MessagePoorCount;        
	private int MemberID;   
	private int TourCourseID;    
	private int MessageClick; 
	
	
	/*picture */
	private int MessagePictureID; 
	private String MessagePictureURL; 
	
	/*comment*/
	private int ReplyID; 
	private String ReplyContent;
	private String ReplyPostDate;
	
	/*coount*/
	private int readCount;
	private int goodCount;
	private int poorCount;
	
	
	
	public String getMemberName() {
		return MemberName;
	}
	public void setMemberName(String memberName) {
		MemberName = memberName;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public int getGoodCount() {
		return goodCount;
	}
	public void setGoodCount(int goodCount) {
		this.goodCount = goodCount;
	}
	public int getPoorCount() {
		return poorCount;
	}
	public void setPoorCount(int poorCount) {
		this.poorCount = poorCount;
	}
	public String getMemberEmail() {
		return MemberEmail;
	}
	public int getMessageID() {
		return MessageID;
	}
	public String getMessageTitle() {
		return MessageTitle;
	}
	public String getMessageContent() {
		return MessageContent;
	}
	public String getMessagePostDate() {
		return MessagePostDate;
	}
	public int getMessageSiteGrade() {
		return MessageSiteGrade;
	}
	public int getMessageGoodCount() {
		return MessageGoodCount;
	}
	public int getMessagePoorCount() {
		return MessagePoorCount;
	}
	public int getMemberID() {
		return MemberID;
	}
	public int getTourCourseID() {
		return TourCourseID;
	}
	public int getMessageClick() {
		return MessageClick;
	}
	public int getMessagePictureID() {
		return MessagePictureID;
	}
	public String getMessagePictureURL() {
		return MessagePictureURL;
	}
	public int getReplyID() {
		return ReplyID;
	}
	public String getReplyContent() {
		return ReplyContent;
	}
	public String getReplyPostDate() {
		return ReplyPostDate;
	}
	
	
	
	public void setMemberEmail(String memberEmail) {
		MemberEmail = memberEmail;
	}
	public void setMessageID(int messageID) {
		MessageID = messageID;
	}
	public void setMessageTitle(String messageTitle) {
		MessageTitle = messageTitle;
	}
	public void setMessageContent(String messageContent) {
		MessageContent = messageContent;
	}
	public void setMessagePostDate(String messagePostDate) {
		MessagePostDate = messagePostDate;
	}
	public void setMessageSiteGrade(int messageSiteGrade) {
		MessageSiteGrade = messageSiteGrade;
	}
	public void setMessageGoodCount(int messageGoodCount) {
		MessageGoodCount = messageGoodCount;
	}
	public void setMessagePoorCount(int messagePoorCount) {
		MessagePoorCount = messagePoorCount;
	}
	public void setMemberID(int memberID) {
		MemberID = memberID;
	}
	public void setTourCourseID(int tourCourseID) {
		TourCourseID = tourCourseID;
	}
	public void setMessageClick(int messageClick) {
		MessageClick = messageClick;
	}
	public void setMessagePictureID(int messagePictureID) {
		MessagePictureID = messagePictureID;
	}
	public void setMessagePictureURL(String messagePictureURL) {
		MessagePictureURL = messagePictureURL;
	}
	public void setReplyID(int replyID) {
		ReplyID = replyID;
	}
	public void setReplyContent(String replyContent) {
		ReplyContent = replyContent;
	}
	public void setReplyPostDate(String replyPostDate) {
		ReplyPostDate = replyPostDate;
	}
	
	
	
	
}
