package DataInput.InputTourSite;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class restTest {
	
	public String restClient() throws Exception{
		String apiUrl="http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=";
		String ServiceKey="WOGrXGwamJXz1zCGpSTyljX0kckkdTPuZL9NTFVzIkTEpmEdn1UZUfCXng0kvbB7W8QcgCEzUJR3qD65DaUbRw%3D%3D";
		String para="";
		para=para+"&contentTypeId=&areaCode=&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI2.0_Guide&arrange=A&numOfRows=25000&pageNo=1&_type=json";

		apiUrl=apiUrl+ServiceKey+para;
		URL url=new URL(apiUrl);
		BufferedReader in=new BufferedReader(new InputStreamReader(url.openStream(),"UTF-8"));
		String inLine;
		String xml="";
		while((inLine=in.readLine())!=null) {
			xml=inLine;
			//System.out.println(xml);
		}
		in.close();
		return xml;
	}
}