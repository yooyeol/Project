package DataInput.InputDetailTotal;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class restTest {
	
	public String restClient(String contentID, String contenttypeId) throws Exception{
		String apiUrl="http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey=";
		String ServiceKey="zGujdyqNQMf%2Fd8JWI5Fl2Ox94KfAmG3tVKQcGPNVq6CmpCQAAglJkLKB3Jh73lw5T0oPTTzjC03irMBD3FhwaQ%3D%3D";
		String para="";
		para=para+"&contentId="+contentID+"&contentTypeId="+contenttypeId+"&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&introYN=Y&_type=json";
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