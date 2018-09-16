package main.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import main.api.FlightDTO;

@Controller
public class RealtimeController {

	@RequestMapping("/main/realtime.do")
	public String realtime() throws Exception {
		list();
		return "realtime";
	}
	
	public ArrayList<FlightDTO> list() throws Exception{
		ArrayList<FlightDTO> info = new ArrayList<FlightDTO>();
		
		StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.kr/openapi/service/StatusOfPassengerFlightsDS/getPassengerDeparturesDS");
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8") + "=SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D");
		urlBuilder.append("&" + URLEncoder.encode("airport_code", "UTF-8") + "=" + URLEncoder.encode("NRT", "UTF-8")); 
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		// System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
		String lines = sb.toString();
		
		 try {
	            JSONParser jsonParser = new JSONParser();
	            JSONObject jsonObj = (JSONObject) jsonParser.parse(lines);
	            
	            JSONObject root = (JSONObject) jsonObj.get("response");
	            JSONObject body = (JSONObject) root.get("body");
	            JSONObject items = (JSONObject) body.get("items");
	            
	            JSONArray item = (JSONArray) items.get("item");
	            
	            for(int i=0 ; i<item.size() ; i++){
	                JSONObject tempObj = (JSONObject) item.get(i);
	                FlightDTO data = new FlightDTO();
	                data.setAirline((String) tempObj.get("airline"));
	                data.setAirport((String) tempObj.get("airport"));
	                data.setAirportcode((String) tempObj.get("airportcode"));
	                data.setChkinrange((String) tempObj.get("chkinrange"));
	                data.setEstimatedDateTime((Long) tempObj.get("estimatedDateTime"));
	                data.setFlightId((String) tempObj.get("flightId"));
	                data.setGatenumber((Long) tempObj.get("gatenumber"));
	                data.setScheduleDateTime((Long) tempObj.get("scheduleDateTime"));
	                data.setTerminalid((String) tempObj.get("terminalid"));
	                info.add(data);
	            }
	            // System.out.println(info.get(2).getAirline());
	            for (int i = 0; i < info.size(); i++) {
	            	System.out.println(info.get(i));
				}
	        } catch (ParseException e) {
	            e.printStackTrace();
	        }
		return info;
	}
}
