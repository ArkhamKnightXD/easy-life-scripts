package knight.arkham.objects.box2D;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.Animation;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.Fixture;
import com.badlogic.gdx.utils.Array;
import knight.arkham.helpers.Box2DBody;
import knight.arkham.helpers.Box2DHelper;
import knight.arkham.helpers.ContactType;

import static knight.arkham.helpers.Constants.PIXELS_PER_METER;

//Probaré aplicar herencias
public abstract class Box2DGameObject {

    protected final Body body;
    protected final Fixture fixture;
    private final Rectangle bounds;

//    Debido a que en mi textureRegion se puede comportar como un texture normal, utilizaré el region mejor,
//    ya que el region me brinda la posibilidad de hacer animaciones para mis personajes.
    private TextureRegion actualRegion;

    protected Box2DGameObject(Box2DBody gameObjectStructure, TextureRegion region) {

        fixture = getFixtureByContactType(gameObjectStructure);
        body = fixture.getBody();
        bounds = gameObjectStructure.bounds;
        actualRegion = region;
    }

    private Fixture getFixtureByContactType(Box2DBody gameObjectStructure){

        boolean isPlayer = gameObjectStructure.contactType == ContactType.PLAYER;

        if (isPlayer)
            return Box2DHelper.createPlayerBody(gameObjectStructure);

        return Box2DHelper.createBody(gameObjectStructure);
    }

    private Rectangle getBoundsWithPPMCalculation(){

        return new Rectangle(
                body.getPosition().x - (bounds.width / 2 / PIXELS_PER_METER),
                body.getPosition().y - (bounds.height / 2 / PIXELS_PER_METER),
                bounds.width / PIXELS_PER_METER,
                bounds.height / PIXELS_PER_METER
        );
    }

    public void draw(Batch batch) {

        Rectangle actualBounds = getBoundsWithPPMCalculation();

        batch.draw(actualRegion, actualBounds.x, actualBounds.y, actualBounds.width, actualBounds.height);
    }

    protected Animation<TextureRegion> makeAnimationByFrameRange(TextureRegion characterRegion, int initialFrame, int finalFrame, float frameDuration) {

        Array<TextureRegion> animationFrames = new Array<>();

        for (int i = initialFrame; i <= finalFrame; i++)
            animationFrames.add(new TextureRegion(characterRegion, i * 16, 0, 16, 16));

        return new Animation<>(frameDuration, animationFrames);
    }

    protected void setActualRegion(TextureRegion actualRegion) {this.actualRegion = actualRegion;}


    public void setActualPosition(float positionX, float positionY) {
        body.setTransform(positionX / PIXELS_PER_METER, positionY / PIXELS_PER_METER, 0);
    }

    public Vector2 getActualPixelPosition() {

        return new Vector2(body.getPosition().x * PIXELS_PER_METER, body.getPosition().y * PIXELS_PER_METER);
    }

    public Texture getSprite() {return actualRegion.getTexture();}

    public Body getBody() {return body;}

    @Override
    public String toString() {
        return "PositionX: " + body.getPosition().x + "\n" + "PositionY: " + body.getPosition().y;
    }
}
