package main.PF.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import main.PF.dto.complex.ComplexRepository;
import main.PF.dto.complex.Complex_CancelRepository;
import main.PF.dto.complex.Complex_DelayRepository;
import main.PF.dto.condition.ConditionRepository;
import main.PF.dto.condition.Condition_CancelRepository;
import main.PF.dto.condition.Condition_DelayRepository;
import main.PF.dto.connection.ConnectionDTO;
import main.PF.dto.connection.ConnectionRepository;
import main.PF.dto.connection.Connection_CancelDTO;
import main.PF.dto.connection.Connection_CancelRepository;
import main.PF.dto.connection.Connection_DelayDTO;
import main.PF.dto.connection.Connection_DelayRepository;
import main.PF.dto.etc.EtcRepository;
import main.PF.dto.etc.Etc_CancelRepository;
import main.PF.dto.etc.Etc_DelayRepository;
import main.PF.dto.repair.RepairRepository;
import main.PF.dto.repair.Repair_CancelRepository;
import main.PF.dto.repair.Repair_DelayRepository;

//Repository와 MongoTemplate을 이용해서 mongodb에 액세스
@Repository
public class AirlineDAOImpl implements AirlineDAO {
	@Autowired
	MongoTemplate mongoTemplate;
	
	@Autowired
	ConnectionRepository conRe;
	@Autowired
	Connection_CancelRepository concanRe;
	@Autowired
	Connection_DelayRepository condeRe;
	
	@Autowired
	RepairRepository reRe;
	@Autowired
	Repair_CancelRepository recanRe;
	@Autowired
	Repair_DelayRepository redeRe;
	
	@Autowired
	ComplexRepository comRe;
	@Autowired
	Complex_CancelRepository comcanRe;
	@Autowired
	Complex_DelayRepository comdeRe;
	
	@Autowired
	ConditionRepository condRe;
	@Autowired
	Condition_CancelRepository condcanRe;
	@Autowired
	Condition_DelayRepository conddeRe;
	
	@Autowired
	EtcRepository etcRe;
	@Autowired
	Etc_CancelRepository etccanRe;
	@Autowired
	Etc_DelayRepository etcdeRe;

	@Override
	public List<ConnectionDTO> findcon() {
		List<ConnectionDTO> docs = (List<ConnectionDTO>) conRe.findAll();
		System.out.println(docs.size());
		return docs;
	}

	@Override
	public List<Connection_CancelDTO> findcon_cancel() {
		return null;
	}

	@Override
	public List<Connection_DelayDTO> findcon_delay() {
		return null;
	}
	
	/*@Autowired
	ScoreRepository scoreRepository;	//페이징처리를 편하게 작업하기 위해 사용 - CLRUD를 위한 메소드 제공	
										//(spring-data common에서 제공하는 라이브러리)
	@Autowired
	MongoTemplate mongoTemplate;	//spring-data-mongodb라이브러리에서 제공
	
	@Override
	public List<ScoreDTO> findCriteria(String key, String value) {
		//1. 선택한 key에 따른 value가 정확하게 일치하는 document들을 검색
		Criteria criteria = new Criteria(key);
		criteria.is(value);
		Query query = new Query(criteria);
		
		
		//2. key와 조건을 value에 같이 적용해서 검색하기
		String[] data = key.split(",");
		Criteria criteria = new Criteria(data[0]);
		if(data[0].equals("java")|data[0].equals("spring")|data[0].equals("servlet")|data[0].equals("bonus")) {
			int num = Integer.parseInt(value);
			if(data[1].equals("is")) {
				criteria.is(num);
			}else if(data[1].equals("gt")) {
				criteria.gt(num);
			}else if(data[1].equals("gte")){
				criteria.gte(num);
			}else if(data[1].equals("lt")){
				criteria.lt(num);
			}else if(data[1].equals("lte")){
				criteria.lte(num);
			}
		}else {
			criteria.is(value);
		}
		
		//3. where메소드를 이용
		System.out.println("where");
		String[] data = key.split(",");
		Query query = new Query();
		query.addCriteria(Criteria.where(data[0]).is(value));
		
		
		//4. 정규표현식으로 검색하기 - like연산자와 동일 /값/
		System.out.println(value);
		String[] data = key.split(",");
		Criteria criteria = new Criteria(data[0]);
		//regex메소드를 사용하면 기본설정은 sql의 like연산자를 이용한 것과 동일한 결과가 출력
		criteria.regex("^"+value); //^붙이면 value로 시작하는것
		Query query = new Query(criteria);
		
		List<ScoreDTO> docs = mongoTemplate.find(query, ScoreDTO.class, "score");
		return docs;
	}

	//mongodb데이터가 json - key,value를 조회조건으로 같이 정의
	//spring-data-mongodb에는 조건을 객체로 정의하도록 api를 제공
	@Override
	public ScoreDTO findById(String key, String value) {
		//Criteria객체는 mongodb에서 조건을 모델링해 놓은 객체
		//어떤 필드에 어떤 조건을 적용할 것인지 
		//필드명과 조건만 정의를 하면 내부에서 json의 쿼리조건을 만들어 처리
		//key = 필드명
		
		//1. 조건을 객체로 정의
		Criteria criteria = new Criteria(key);
		//조건에 대한 설정 - value값과 정확하게 일치하는 document를 조회
		criteria.is(value);
		
		//2.Criteria객체를 이용해서 Query를 생성
		Query query = new Query(criteria);
		
		//3. MongoTemplate이 제공하는 메소드를 호출해서 실행
		ScoreDTO doc = mongoTemplate.findOne(query, ScoreDTO.class, "score");
		return doc;
	}

	@Override
	public void insertDocument(ScoreDTO doc) {
		mongoTemplate.insert(doc);
	}

	@Override
	public void insertAllDocument(List<ScoreDTO> docs) {
		mongoTemplate.insertAll(docs);
	}

	@Override
	public void update(ScoreDTO document) {
		Criteria criteria = new Criteria("id");
		criteria.is(document.getId());
		Query query = new Query(criteria);
		
		//업데이트기능을 수행하는 객체를 생성해서 셋팅하고 작업해야 한다.
		System.out.println(document);
		Update update = new Update();
		update.set("addr", document.getAddr());
		update.set("dept", document.getDept());
		mongoTemplate.updateMulti(query, update, "score");
	}

	@Override
	public void test1() {

	}

	@Override
	public List<ScoreDTO> findAll() {
		List<ScoreDTO> mongolist = (List<ScoreDTO>)scoreRepository.findAll();
		System.out.println(mongolist.size());
		return mongolist;
	}

	@Override
	public List<ScoreDTO> findAll(int pageNo) {
		//PagingAndSortingRepository의 findAll을 호출면여 페이징 처리된 객체를 전달 받을 수 있따.
		//findAll메소드는 페이징 처리를 할 수 있도록 PageRequest객체를 매개변수로 전달해야 한다.
		//PageRequest객체는 페이지에 대한 정보를 가져올 수 있도록 
		//요청할 페이지 번호와 전체 몇 개의 document를 페이지에 보여줄 것인지 정의해야 한다.
		//Page객체는 페이징처리가 적용된 데이터를 담고 있는 객체
		Page<ScoreDTO> page = scoreRepository.findAll(new PageRequest(pageNo, 5));
		//getContent를 호출해서 한페이지에 보여줄 document들을 받아온다.
		List<ScoreDTO> mongolist = page.getContent();
		return mongolist;
	}*/

}
