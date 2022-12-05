package knight.arkham.demo.repositories;

import knight.arkham.demo.entities.VideoGame;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VideoGameRepository extends JpaRepository<VideoGame, Long> {

    VideoGame findVideoGameById(Long id);

    @Override
    Page<VideoGame> findAll(Pageable pageable);
}
