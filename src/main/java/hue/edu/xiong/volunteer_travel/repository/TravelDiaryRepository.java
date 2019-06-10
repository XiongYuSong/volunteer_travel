package hue.edu.xiong.volunteer_travel.repository;

import hue.edu.xiong.volunteer_travel.model.TravelDiary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface TravelDiaryRepository extends JpaRepository<TravelDiary, String>, JpaSpecificationExecutor<TravelDiary> {

}
