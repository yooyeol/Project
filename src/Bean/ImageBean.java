package Bean;

import java.util.ArrayList;

public class ImageBean {
	private String imageSerialNum;
	private ArrayList<String> imageOriginImgUrl;
	
	public String getImageSerialNum() {
		return imageSerialNum;
	}
	public void setImageSerialNum(String imageSerialNum) {
		this.imageSerialNum = imageSerialNum;
	}
	public ArrayList<String> getImageOriginImgUrl() {
		return imageOriginImgUrl;
	}
	public void setImageOriginImgUrl(ArrayList<String> imageOriginImgUrl) {
		this.imageOriginImgUrl = imageOriginImgUrl;
	}
	
}