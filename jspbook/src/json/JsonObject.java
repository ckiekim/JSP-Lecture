package json;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class JsonObject {
	public static void main(String[] args) {
		// JSON DATA 는 가장 아래 단계에서 부터 만들어 나간다.
		System.out.println("----------------------------------------------");
		System.out.println("JSON String 생성");
		JSONObject jObject = new JSONObject();
		jObject.put("name", "유혁");
		jObject.put("age", 40);
		
		System.out.println(jObject.toString());
		
		System.out.println("----------------------------------------------");
		System.out.println("JSON String 파싱");
		try {
			int age = (Integer) jObject.get("age");
			String name = (String) jObject.get("name");
			System.out.println("name = " + name);
			System.out.println("age = " + age);
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("----------------------------------------------");
	}
}
