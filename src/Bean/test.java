package Bean;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class test {
	public static void main(String[] args) {
		ObjectMapper mapper = new ObjectMapper();
		
		String user_json = "{\"name\" : { \"first\" : \"Joe\", \"last\" : \"Sixpack\" }, \"gender\" : \"MALE\", \"verified\" : false, \"userImage\" : \"Rm9vYmFyIQ==\"} ";
		System.out.println(user_json);
		try {
			DetailCourseInfoBean course = mapper.readValue(user_json, DetailCourseInfoBean.class);
			
			String jsonStr = mapper.writeValueAsString(course);
			System.out.println("Simple Binding : "+ jsonStr);
			
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}