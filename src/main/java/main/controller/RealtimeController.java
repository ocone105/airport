package main.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import main.api.FlightDTO;
import main.api.realtimeAPI;

@Controller
public class RealtimeController {

	@Autowired
	realtimeAPI api;
	
	@RequestMapping("/main/realtime.do")
	public ModelAndView realtime() throws Exception {
		ArrayList<FlightDTO> info = api.realtime(""); 
		return new ModelAndView("realtime", "info", info);
	}
	
	@RequestMapping("/main/realtimeSearch.do")
	public ModelAndView realtimeSearch(String destination, String airline, String flight, String time) throws Exception {
		ArrayList<FlightDTO> info = api.realtime(destination); 
		return new ModelAndView("realtime", "info", info);
	}
}
