package main.PF.dto.etc;

import org.springframework.data.repository.PagingAndSortingRepository;

//spring-data내부에서 자동으로 생성하고 매핑시킨다.
public interface Etc_CancelRepository extends PagingAndSortingRepository<Etc_CancelDTO, String> {
}
