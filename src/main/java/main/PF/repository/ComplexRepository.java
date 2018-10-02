package main.PF.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import main.PF.dto.complex.ComplexDTO;

//spring-data내부에서 자동으로 생성하고 매핑시킨다.
public interface ComplexRepository extends PagingAndSortingRepository<ComplexDTO, String> {
}
