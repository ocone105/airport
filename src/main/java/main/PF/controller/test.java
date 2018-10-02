package main.PF.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import main.PF.dto.connection.ConnectionDTO;
import main.PF.service.AirlineService;

public class test {

	@Autowired
	static AirlineService service;
	
	public static void main(String[] args) {
		List<ConnectionDTO> list = new ArrayList<ConnectionDTO>();
		list = service.findcon();
		System.out.println("list : "+list);

	}

}
