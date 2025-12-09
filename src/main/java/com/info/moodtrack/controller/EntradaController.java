package com.info.moodtrack.controller;

import com.info.moodtrack.dto.entradadiaria.EntradaDiariaCreateDto;
import com.info.moodtrack.dto.entradadiaria.EntradaDiariaDto;
import com.info.moodtrack.service.entradadiaria.EntradaDiariaService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/entrada-diaria")
@RequiredArgsConstructor
@Validated
@Slf4j
public class EntradaController {

    private final EntradaDiariaService entradaDiariaService;

    @PostMapping
    public ResponseEntity<EntradaDiariaDto> crear(@Valid @RequestBody EntradaDiariaCreateDto createDto){
        try {
            EntradaDiariaDto entradaCreada = entradaDiariaService.create( createDto );
            return ResponseEntity.ok( entradaCreada );
        }catch (IllegalArgumentException illegalArgumentException){
            return ResponseEntity.badRequest().build();
        }catch (Exception e){
            log.error("Error desconocido", e);
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/usuario/{usuarioId}")
    public ResponseEntity<List<EntradaDiariaDto>> getEntradasByUsuario(
            @PathVariable UUID usuarioId,
            @RequestParam(required = false) LocalDate desde,
            @RequestParam(required = false) LocalDate hasta) {
        List<EntradaDiariaDto> entradas = entradaDiariaService.getEntradasByUsuario(usuarioId, desde, hasta);
        return ResponseEntity.ok(entradas);
    }
}
