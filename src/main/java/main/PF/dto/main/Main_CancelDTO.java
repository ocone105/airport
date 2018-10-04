package main.PF.dto.main;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//document와 매핑될 객체를 정의 - 도메인 클래스라 칭함
@Document(collection="main_cancel")
public class Main_CancelDTO {
	@Id
	int _id;
	int value;
	
	public Main_CancelDTO() {}
	public Main_CancelDTO(int _id, int value) {
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
