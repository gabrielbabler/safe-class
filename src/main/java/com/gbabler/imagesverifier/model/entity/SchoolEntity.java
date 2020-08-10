package com.gbabler.imagesverifier.model.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "school")
public class SchoolEntity {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "address")
    private String address;

    @Column(name = "phone")
    private String phone;

    @Column(name = "allow_whatsapp")
    private Boolean allowWhatsapp;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "school")
    private List<StudentEntity> students;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "school")
    private List<TeacherEntity> teachers;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "school")
    private List<ClassEntity> classes;

}
