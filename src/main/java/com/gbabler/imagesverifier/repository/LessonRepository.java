package com.gbabler.imagesverifier.repository;

import com.gbabler.imagesverifier.model.entity.LessonEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LessonRepository extends JpaRepository<LessonEntity, String> {
}
