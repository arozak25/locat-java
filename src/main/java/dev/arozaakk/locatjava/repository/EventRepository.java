package dev.arozaakk.locatjava.repository;

import dev.arozaakk.locatjava.entity.Event;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventRepository extends JpaRepository<Event, Long> {
}
