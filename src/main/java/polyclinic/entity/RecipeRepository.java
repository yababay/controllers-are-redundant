package polyclinic.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel="recipes",path="recipes")
public interface RecipeRepository extends JpaRepository<Recipe, Integer> {
}