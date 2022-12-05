package knight.arkham.demo.controllers;

import io.swagger.v3.oas.annotations.Operation;
import knight.arkham.demo.entities.VideoGame;
import knight.arkham.demo.services.VideoGameService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@CrossOrigin(origins = "*")
@RequestMapping("/api/v1/games/")
@RestController
public class VideoGameController {

    private final VideoGameService videoGameService;

    public VideoGameController(VideoGameService videoGameService) {
        this.videoGameService = videoGameService;
    }


    @GetMapping("pagination/{pageSize}/{sortIdentifier}/{isAscending}")
    @Operation(summary = "Get All With Pagination", description = "Consigue la lista de todos los elementos con paginación")
    public ResponseEntity<Page<VideoGame>> getAllWithPagination(@PathVariable int pageSize, @PathVariable String sortIdentifier, @PathVariable boolean isAscending) {

        return new ResponseEntity<>(videoGameService.getAllWithPagination(pageSize, sortIdentifier, isAscending), HttpStatus.OK);
    }


    @GetMapping
    @Operation(summary = "Get All", description = "Consigue la lista de todos los elementos")
    public ResponseEntity<List<VideoGame>> getAll() {

        return new ResponseEntity<>(videoGameService.getAll(), HttpStatus.OK);
    }


    @GetMapping("{videoGameId}")
    @Operation(summary = "Get By Id", description = "Retorna un elemento con el id correspondiente")
    public ResponseEntity<VideoGame> getById(@PathVariable long videoGameId) {

        var actualVideoGame = videoGameService.getById(videoGameId);

        if (actualVideoGame != null)
            return new ResponseEntity<>(actualVideoGame, HttpStatus.OK);

        return new ResponseEntity<>(null, HttpStatus.NOT_FOUND);
    }


    @PostMapping
    @Operation(summary = "Save Element", description = "Crear nuevo elemento")
    public ResponseEntity<List<VideoGame>> save(@RequestBody VideoGame videoGameToSave) {

        var videoGames= videoGameService.save(videoGameToSave);

        return new ResponseEntity<>(videoGames, HttpStatus.OK);
    }


    @PutMapping
    @Operation(summary = "Update Element", description = "Actualiza el elemento enviado")
    public ResponseEntity<List<VideoGame>> update(@RequestBody VideoGame updatedVideoGame) {

        var videoGames = videoGameService.update(updatedVideoGame);

        return new ResponseEntity<>(videoGames, HttpStatus.OK);
    }


    @DeleteMapping("{videoGameId}")
    @Operation(summary = "Delete A Element By Id", description = "Elimina un elemento con el id correspondiente")
    public ResponseEntity<List<VideoGame>> deleteById(@PathVariable long videoGameId) {

        videoGameService.deleteById(videoGameId);

        return new ResponseEntity<>(videoGameService.getAll(), HttpStatus.OK);
    }
}
