package main.api;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class realtimeAPI {

	public static void main(String[] args) throws IOException {

		StringBuilder urlBuilder = new StringBuilder("http://openapi.airport.kr/openapi/service/StatusOfPassengerFlightsDS/getPassengerDeparturesDS");
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8")
				+ "=SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D");
		urlBuilder.append("&" + URLEncoder.encode("airport_code", "UTF-8") + "="
				+ URLEncoder.encode("NRT", "UTF-8"));
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
		/*try {
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			XmlPullParser pullparser = factory.newPullParser();
			BufferedInputStream bis = new BufferedInputStream(url.openStream());
			pullparser.setInput(bis, "utf-8");
			int eventType = pullparser.getEventType();
			String tagName = "";

			while (eventType != XmlPullParser.END_DOCUMENT) {
				if (eventType == XmlPullParser.START_TAG) {
					tagName = pullparser.getName();
				} else if (eventType == XmlPullParser.TEXT) {
					System.out.println(tagName + " : " + pullparser.getText());
				} else if (eventType == XmlPullParser.END_TAG) {
					tagName = pullparser.getName();
					if (tagName.equals("item")) {
						System.out.println();
						System.out.println();
					}
				}
				eventType = pullparser.next();
			}
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) { e.printStackTrace(); }
*/
		 /*
		 * 
		 * XmlPullParser pullparser = factory.newPullParser();
		 * 
		 * String airurl =
		 * "http://openapi.airport.kr/openapi/service/StatusOfPassengerFlightsDS/getPassengerArrivalsDS";
		 * String key =
		 * "SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D";
		 * String realUrl = airurl + "?ServiceKey=" + key; URL url = new URL(realUrl);
		 * 
		 * BufferedInputStream bis = new BufferedInputStream(url.openStream());
		 * pullparser.setInput(bis, "utf-8"); int eventType = pullparser.getEventType();
		 * String tagName = "";
		 * 
		 * while (eventType != XmlPullParser.END_DOCUMENT) { if (eventType ==
		 * XmlPullParser.START_TAG) { tagName = pullparser.getName(); } else if
		 * (eventType == XmlPullParser.TEXT) { System.out.println(tagName + " : " +
		 * pullparser.getText()); } else if (eventType == XmlPullParser.END_TAG) {
		 * tagName = pullparser.getName(); if (tagName.equals("item")) {
		 * System.out.println(); System.out.println(); } } eventType =
		 * pullparser.next(); } } catch (XmlPullParserException e) {
		 * e.printStackTrace(); } catch (FileNotFoundException e) { e.printStackTrace();
		 * } catch (IOException e) { e.printStackTrace(); }
		 */
	}
}
