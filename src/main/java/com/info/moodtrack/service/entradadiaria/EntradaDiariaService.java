package com.info.moodtrack.service.entradadiaria;

import com.info.moodtrack.dto.entradadiaria.EntradaDiariaCreateDto;
import com.info.moodtrack.dto.entradadiaria.EntradaDiariaDto;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

public interface EntradaDiariaService {
    EntradaDiariaDto create(EntradaDiariaCreateDto createDto);

    List<EntradaDiariaDto> getEntradasByUsuario(UUID usuarioId, LocalDate desde, LocalDate hasta);
}
