package DAO;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 * JSONObject瑜� HTML�뿉�꽌 �몴�떆�븯湲� �쐞�븳 �뀒�씠釉� �삎�깭濡� 留뚮뱾�뼱以��떎.
 * 
 *
 */
public class JSON2Table {
	private JSONArray datas = null;
	private StringBuffer result = null;
	
	private int border = 1;
	
	class Node{
		String content;
		String name;
	}
	
	public String getTableString(){
//		appendArrayToString(columns, "th");
		for(int i=0; i<datas.size(); i++){
			JSONArray temp = (JSONArray)datas.get(i);
			appendArrayToString(temp, "td");
		}
		return result.toString();
	}
	
	private void appendArrayToString(JSONArray array, String tag){
		for(int i=0; i<array.size(); i++){
			result.append(array.get(i));
		}
	}
	
	public void setTableBorder(int border){
		this.border = border;
	}
	
	
	public JSON2Table(JSONObject data) throws Exception {
		validation(data);
		result = new StringBuffer(1024);
	}
	
	public void validation(JSONObject param) throws Exception{
		try {
			if (!(param.containsKey("datas"))) {
				throw new Exception("INVALID JSONOBJECT : MUST CONTAIN 'DATA' JSONARRAY");
			}
			datas = ((JSONArray) param.get("datas"));
			int bodySize = ((JSONArray) datas.get(0)).size();
			for (int i = 1; i < datas.size(); i++) {
				if (((JSONArray) datas.get(i)).size() != bodySize)
					throw new Exception("CHECK BODY'S SIZE OF INDEX OF" + i + ", OR FIRST DATA'S SIZE");
			}

		} catch (ClassCastException e) {
			throw e;
		}
	}
}
