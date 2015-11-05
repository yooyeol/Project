package DataInput.InputInfo;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class restTest {
	
	public String restClient(String contentID) throws Exception{
		String apiUrl="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=";
		String ServiceKey="ensGFWNE60QR77XvjL1s3OpW3ArxbrDunHZ2yz8YHNRjUYLgbA8UkxI6LYzjgCgXWPdX%2FEvPsG%2BJxqtzRIKGYg%3D%3D";
		String para="";
		para=para+"&contentId="+contentID+"&defaultYN=Y&firstImageYN=Y&overviewYN=Y&listYN=Y&MobileOS=ETC&MobileApp=AppTesting&numOfRows=1000&pageNo=1&_type=json";
		// http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=WOGrXGwamJXz1zCGpSTyljX0kckkdTPuZL9NTFVzIkTEpmEdn1UZUfCXng0kvbB7W8QcgCEzUJR3qD65DaUbRw%3D%3D&contentId=126509&defaultYN=Y&firstImageYN=Y&overviewYN=Y&listYN=Y&MobileOS=ETC&MobileApp=AppTesting&_type=json
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