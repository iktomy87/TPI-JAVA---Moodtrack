package com.info.moodtrack.repository.usuario.entradadiaria;

import com.info.moodtrack.model.EntradaDiaria;
import com.info.moodtrack.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;

public interface EntradaDiariaRepository extends JpaRepository<EntradaDiaria, Long> {
    List<EntradaDiaria> findByUsuarioAndFechaBetween(Usuario usuario, LocalDate desde, LocalDate hasta);
    List<EntradaDiaria> findByUsuario(Usuario usuario);
}
