package main.api;

import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class realtimeAPI {
	
	public static void main(String[] args) throws IOException {

		try {
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			XmlPullParser pullparser = factory.newPullParser();

			String airurl = "http://openapi.airport.kr/openapi/service/StatusOfPassengerFlightsDS/getPassengerArrivalsDS";
			String key = "SIiebQZNZnHWh2wfaDQr3sqEbhZH5dOGGBBnUuGTfGX0YfQLrVkPYI9IoYeHbFV0b2x0TxmtG873O%2BSlIjb8WA%3D%3D";
			String realUrl = airurl + "?ServiceKey=" + key;
			URL url = new URL(realUrl);

			BufferedInputStream bis = new BufferedInputStream(url.openStream());
			/*pullparser.setInput(bis, "utf-8");
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
			}*/
		} catch (XmlPullParserException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
