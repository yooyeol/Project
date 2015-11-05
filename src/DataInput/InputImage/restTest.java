package DataInput.InputImage;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class restTest {
	
	public String restClient(String contentID, String contenttypeid) throws Exception{
		String apiUrl="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey=";
		String ServiceKey="2qIkVeddKor0Z23JzWfaMpp1Spx4ldwmfRzogSd9OLqYaNCE8FDMVvPUY42yfQ9ok8nXj2%2Fd%2B0NlHzZWgF2xYg%3D%3D";
		String para="";
		para=para+"&contentId="+contentID+"&contentTypeId="+contenttypeid+"&defaultYN=Y&firstImageYN=Y&overviewYN=Y&listYN=Y&MobileOS=ETC&MobileApp=AppTesting&numOfRows=100&pageNo=1&_type=json";
		apiUrl=apiUrl+ServiceKey+para;
		URL url=new URL(apiUrl);
		BufferedReader in=new BufferedReader(new InputStreamReader(url.openStream(),"UTF-8"));
		String inLine;
		String xml="";
		while((inLine=in.readLine())!=null) {
			xml=inLine;
		}
		in.close();
		return xml;
	}
}