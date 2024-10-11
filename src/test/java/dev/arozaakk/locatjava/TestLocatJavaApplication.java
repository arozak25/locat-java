package dev.arozaakk.locatjava;

import org.springframework.boot.SpringApplication;

public class TestLocatJavaApplication {

    public static void main(String[] args) {
        SpringApplication.from(LocatJavaApplication::main).with(TestcontainersConfiguration.class).run(args);
    }

}
