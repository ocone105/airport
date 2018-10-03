package main.realtime.api;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
 
@Service
public class schedulerService {

	@Scheduled(cron="* * 1 * * ?")	// 매일 오전 1시에 실행
	public void getWeather() {
		//System.out.println("스케쥴링 테스트");
	}
}
