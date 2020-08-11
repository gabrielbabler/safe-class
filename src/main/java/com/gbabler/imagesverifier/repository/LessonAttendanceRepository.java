package com.gbabler.imagesverifier.repository;

import com.gbabler.imagesverifier.model.entity.LessonAttendanceEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LessonAttendanceRepository extends JpaRepository<LessonAttendanceEntity, String> {
}
