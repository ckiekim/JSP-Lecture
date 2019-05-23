package json;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class JsonArray {
	public static void main(String[] args) {
		// JSON DATA 는 가장 아래 단계에서 부터 만들어 나간다.
		System.out.println("----------------------------------------------");
		System.out.println("JSON String 생성");
		JSONObject jObject = new JSONObject();
		
		JSONArray jArray = new JSONArray();
		JSONObject school = new JSONObject();
		school.put("subject1", "math");
		school.put("subject2", "science");
		jArray.add(school);
		
		school = new JSONObject();
		school.put("subject1", "국어");
		school.put("subject2", "영어");
		jArray.add(school);
		jObject.put("school", jArray);
		
		System.out.println(jObject.toString());
		
		System.out.println("----------------------------------------------");
		System.out.println("JSON String 파싱");
		try {
			JSONArray returnSchool = (JSONArray) jObject.get("school");
			System.out.println("Size= " + returnSchool.size());
			for (int i=0; i<returnSchool.size(); i++) {
				JSONObject returnSubject = (JSONObject) returnSchool.get(i);
				System.out.println("subject : " + returnSubject.get("subject1"));
				System.out.println("subject : " + returnSubject.get("subject2"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("----------------------------------------------");
	}
}
