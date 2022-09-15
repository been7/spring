package ch05.dao.map;

import java.time.LocalDate;

public interface TodayMap { //dao의 디펜던시?
	LocalDate selectToday();
}
//매퍼인터페이스 만들었지? 그러면..