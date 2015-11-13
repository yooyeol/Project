package Bean;

import java.util.Date;

public class CourseBean {
	private int TourCourseID;
	private int MemberID;
	private Date TourCourseDate;
	private int TourCourseSequence;
	private int TourSiteContentID;
	public int getTourCourseID() {
		return TourCourseID;
	}
	public void setTourCourseID(int tourCourseID) {
		TourCourseID = tourCourseID;
	}
	public int getMemberID() {
		return MemberID;
	}
	public void setMemberID(int memberID) {
		MemberID = memberID;
	}
	public Date getTourCourseDate() {
		return TourCourseDate;
	}
	public void setTourCourseDate(Date tourCourseDate) {
		TourCourseDate = tourCourseDate;
	}
	public int getTourCourseSequence() {
		return TourCourseSequence;
	}
	public void setTourCourseSequence(int tourCourseSequence) {
		TourCourseSequence = tourCourseSequence;
	}
	public int getTourSiteContentID() {
		return TourSiteContentID;
	}
	public void setTourSiteContentID(int tourSiteContentID) {
		TourSiteContentID = tourSiteContentID;
	}
	
	
}
