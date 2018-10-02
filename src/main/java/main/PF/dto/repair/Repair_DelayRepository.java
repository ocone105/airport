package main.PF.dto.repair;

import org.springframework.data.repository.PagingAndSortingRepository;

//spring-data내부에서 자동으로 생성하고 매핑시킨다.
public interface Repair_DelayRepository extends PagingAndSortingRepository<Repair_DelayDTO, String> {
}
