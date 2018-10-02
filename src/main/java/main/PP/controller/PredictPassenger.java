package main.PP.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import main.PP.dto.PredictPassengerDTO;
import main.PP.dto.RealTimePassengerDTO;
import main.realtime.api.FlightDTO;

@Service
public class PredictPassenger {
//http://openapi.airport.kr/openapi/service/PassengerNoticeKR/getfPassengerNoticeIKR?ServiceKey=인증키&selectdate=0
	ArrayList<PredictPassengerDTO> PredictPassenger(String selectdate) throws IOException {
		StringBuilder urlBuilder = new StringBuilder(
				"http://openapi.airport.kr/openapi/service/PassengerNoticeKR/getfPassengerNoticeIKR");
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8")
				+ "=SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D");
		urlBuilder.append("&" + URLEncoder.encode("selectdate", "UTF-8") + "=" + URLEncoder.encode(selectdate, "UTF-8"));

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
			JSONArray item = (JSONArray) items.get("item");
            ArrayList<PredictPassengerDTO> ppinfolist = new ArrayList<PredictPassengerDTO>();
            for(int i=0 ; i<item.size() ; i++){
                JSONObject tempObj = (JSONObject) item.get(i);
                PredictPassengerDTO ppinfo = new PredictPassengerDTO();
                //System.out.println(item);
                if(i!=item.size()-1) {
                	ppinfo.setAdate((Long) tempObj.get("adate"));
                }
				ppinfo.setAtime((String) tempObj.get("atime"));
				ppinfo.setT1sum1((Long) tempObj.get("t1sum1"));
				ppinfo.setT1sum2((Long) tempObj.get("t1sum2"));
				ppinfo.setT1sum3((Long) tempObj.get("t1sum3"));
				ppinfo.setT1sum4((Long) tempObj.get("t1sum4"));
				ppinfo.setT1sum5((Long) tempObj.get("t1sum5"));
				ppinfo.setT1sum6((Long) tempObj.get("t1sum6"));
				ppinfo.setT1sum7((Long) tempObj.get("t1sum7"));
				ppinfo.setT1sum8((Long) tempObj.get("t1sum8"));
				ppinfo.setT1sumset1((Long) tempObj.get("t1sumset1"));
				ppinfo.setT1sumset2((Long) tempObj.get("t1sumset2"));
				ppinfo.setT2sum1((Long) tempObj.get("t2sum1"));
				ppinfo.setT2sum2((Long) tempObj.get("t2sum2"));
				ppinfo.setT2sum3((Long) tempObj.get("t2sum3"));
				ppinfo.setT2sum4((Long) tempObj.get("t2sum4"));
				ppinfo.setT2sumset1((Long) tempObj.get("t2sumset1"));
				ppinfo.setT2sumset2((Long) tempObj.get("t2sumset2"));
				ppinfolist.add(ppinfo);
            }
			return ppinfolist;
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
		
	}
}
