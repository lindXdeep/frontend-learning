package win.modal.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import win.modal.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
  
}
