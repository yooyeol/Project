package Bean;

//여행코스 디테일
public class DetailCourseInfoBean {
	private String detailCourseInfoDistance;
	private String detailCourseInfoInfoCenterOurCourse;
	private String detailCourseInfoSchedule;
	private String detailCourseInfoTakeTime;
	private String detailCourseInfoTheme;
	private InfoBean infoBean;
	private ImageBean imageBean;
	
	public ImageBean getImageBean() {
		return imageBean;
	}
	public void setImageBean(ImageBean imageBean) {
		this.imageBean = imageBean;
	}
	public InfoBean getInfoBean() {
		return infoBean;
	}
	public void setInfoBean(InfoBean infoBean) {
		this.infoBean = infoBean;
	}
	public String getDetailCourseInfoDistance() {
		return detailCourseInfoDistance;
	}
	public void setDetailCourseInfoDistance(String detailCourseInfoDistance) {
		this.detailCourseInfoDistance = detailCourseInfoDistance;
	}
	public String getDetailCourseInfoInfoCenterOurCourse() {
		return detailCourseInfoInfoCenterOurCourse;
	}
	public void setDetailCourseInfoInfoCenterOurCourse(String detailCourseInfoInfoCenterOurCourse) {
		this.detailCourseInfoInfoCenterOurCourse = detailCourseInfoInfoCenterOurCourse;
	}
	public String getDetailCourseInfoSchedule() {
		return detailCourseInfoSchedule;
	}
	public void setDetailCourseInfoSchedule(String detailCourseInfoSchedule) {
		this.detailCourseInfoSchedule = detailCourseInfoSchedule;
	}
	public String getDetailCourseInfoTakeTime() {
		return detailCourseInfoTakeTime;
	}
	public void setDetailCourseInfoTakeTime(String detailCourseInfoTakeTime) {
		this.detailCourseInfoTakeTime = detailCourseInfoTakeTime;
	}
	public String getDetailCourseInfoTheme() {
		return detailCourseInfoTheme;
	}
	public void setDetailCourseInfoTheme(String detailCourseInfoTheme) {
		this.detailCourseInfoTheme = detailCourseInfoTheme;
	}
}
