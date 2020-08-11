package com.gbabler.imagesverifier.repository;

import com.gbabler.imagesverifier.model.entity.SchoolEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SchoolRepository extends JpaRepository<SchoolEntity, String> {
}
