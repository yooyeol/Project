
import java.util.ArrayList;
import java.util.HashMap;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.xml.parsers.*;

import org.w3c.dom.*;
import org.xml.sax.*;
import org.json.simple.*;

public class Parser {
	public ArrayList<HashMap<String, Object>> parsorXml()
			throws ParserConfigurationException, UnsupportedEncodingException {
		ArrayList<HashMap<String, Object>> testList = new ArrayList<HashMap<String, Object>>();
		
		
		
		String query1=URLEncoder.encode("㈜농업법인 한마루 H힐스리조트 [우수숙박시설 굿스테이]","UTF-8");
		System.out.println(query1);
		
		String apiUrl = "http://openapi.naver.com/search?key=";
		String ServiceKey = "495fefb7974361dfda250be82ff8662b&query="+query1;
		String papiUrl = "";

		String para = "&display=1&start=1";
		String para2 = "&target=blog&sort=sim";

		DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
		DocumentBuilder parser = f.newDocumentBuilder();
		Document xmlDoc = null;
		String paseUrl = null;
		
		
		
	
			papiUrl = apiUrl + ServiceKey + para + para2;

			f = DocumentBuilderFactory.newInstance();
			parser = f.newDocumentBuilder();
			paseUrl = papiUrl;

			System.out.println(paseUrl);

			try {
				xmlDoc = parser.parse(paseUrl);

			} catch (SAXException | IOException e) {
				e.printStackTrace();

			}
			Element root = xmlDoc.getDocumentElement();

				Node code = root.getElementsByTagName("total").item(0);
				HashMap<String, Object> parsorXml = new HashMap<String, Object>();
				parsorXml.put("total", code.getTextContent());
				
				testList.add(parsorXml);

			
		
		return testList;
	}
}
