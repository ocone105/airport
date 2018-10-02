package main.PF.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import main.PF.dto.condition.Condition_DelayDTO;

//spring-data내부에서 자동으로 생성하고 매핑시킨다.
public interface Condition_DelayRepository extends PagingAndSortingRepository<Condition_DelayDTO, String> {
}
