package polyclinic.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel="patients",path="patients")
public interface PatientRepository extends JpaRepository<Patient, Integer> {
}