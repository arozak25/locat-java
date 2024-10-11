package dev.arozaakk.locatjava.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "event_format")
public class EventFormat {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "event_format_id_gen")
    @SequenceGenerator(name = "event_format_id_gen", sequenceName = "event_format_id_seq", allocationSize = 1)
    @Column(name = "id", nullable = false)
    private Long id;

    @Size(max = 255)
    @NotNull
    @Column(name = "name", nullable = false)
    private String name;

    @OneToMany(mappedBy = "eventFormat")
    private Set<Event> events = new LinkedHashSet<>();

}
