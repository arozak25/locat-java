package dev.arozaakk.locatjava.repository;

import dev.arozaakk.locatjava.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
