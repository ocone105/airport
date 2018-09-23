package main.PP.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import main.PP.dto.RealTimePassengerDTO;

@Service
public class RealTimePassenger {
	RealTimePassengerDTO realTimePassenger(String ter) throws IOException {
		StringBuilder urlBuilder = new StringBuilder(
				"http://openapi.airport.kr/openapi/service/StatusOfDepartures/getDeparturesCongestion");
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8")
				+ "=SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D");
		urlBuilder.append("&" + URLEncoder.encode("terno", "UTF-8") + "=" + URLEncoder.encode(ter, "UTF-8"));

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
		//System.out.println(sb.toString());
		String lines = sb.toString();

		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(lines);

			JSONObject root = (JSONObject) jsonObj.get("response");
			JSONObject body = (JSONObject) root.get("body");
			JSONObject items = (JSONObject) body.get("items");
			JSONObject item = (JSONObject) items.get("item");
			RealTimePassengerDTO rtginfo = new RealTimePassengerDTO();
			//System.out.println(item);
			rtginfo.setAreadiv((Long) item.get("areadiv"));
			rtginfo.setCgtdt((Long) item.get("cgtdt"));
			rtginfo.setCgthm((String) item.get("cgthm"));
			rtginfo.setGate1((Long) item.get("gate1"));
			rtginfo.setGate2((Long) item.get("gate2"));
			if(ter.equals("1")) {
				rtginfo.setGate3((Long) item.get("gate3"));
				rtginfo.setGate4((Long) item.get("gate4"));
			}
			rtginfo.setGateinfo1((Long) item.get("gateinfo1"));
			rtginfo.setGateinfo2((Long) item.get("gateinfo2"));
			if(ter.equals("1")){
				rtginfo.setGateinfo3((Long) item.get("gateinfo3"));
				rtginfo.setGateinfo4((Long) item.get("gateinfo4"));
			}
			rtginfo.setTerno((Long) item.get("terno"));
			
			return rtginfo;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
		
	}
}
