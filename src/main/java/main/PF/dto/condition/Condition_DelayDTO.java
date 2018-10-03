package main.PF.dto.condition;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//document와 매핑될 객체를 정의 - 도메인 클래스라 칭함
@Document(collection="condition_delay")
public class Condition_DelayDTO {
	@Id
	int _id;
	int value;
	
	public Condition_DelayDTO() {}
	public Condition_DelayDTO(int _id, int value) {
		super();
		this._id = _id;
		this.value = value;
	}
	
	public int get_id() {
		return _id;
	}
	public void set_id(int _id) {
		this._id = _id;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	
	
}
