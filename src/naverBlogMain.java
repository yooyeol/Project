import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class naverBlogMain {

	public static void main(String[] args) throws Exception {

		Parser par = new Parser();
		ArrayList<HashMap<String, Object>> testList = par.parsorXml();

	

	  //    for (int i = 0; i < testList.size(); i++) {
	         HashMap<String, Object> test = testList.get(0);

	     
	            String str = (String) test.get("total");

	           System.out.println(str);

	      //}

	}
}