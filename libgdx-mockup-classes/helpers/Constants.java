package knight.arkham.helpers;

import knight.arkham.Playground;

public class Constants {

//    Para saber cual seria mi ppm ideal, debería de tomar en cuenta la altura de mi personaje, si su altura es 32,
//    pues asi sera mi ppm
    public static final float PIXELS_PER_METER = 32;

    public static final int FULL_SCREEN_HEIGHT = Playground.INSTANCE.getScreenHeight();
    public static final float BOX2D_FULL_SCREEN_HEIGHT = Playground.INSTANCE.getScreenHeight() / PIXELS_PER_METER;
    public static final int FULL_SCREEN_WIDTH = Playground.INSTANCE.getScreenWidth();
    public static final float BOX2D_FULL_SCREEN_WIDTH = Playground.INSTANCE.getScreenWidth() / PIXELS_PER_METER;
    public static final int MID_SCREEN_HEIGHT = Playground.INSTANCE.getScreenHeight() / 2;
    public static final int MID_SCREEN_WIDTH = Playground.INSTANCE.getScreenWidth() / 2;

    public static final short NOTHING_BIT = 0;
    public static final short GROUND_BIT = 1;
    public static final short PLAYER_BIT = 2;
    public static final short BRICK_BIT = 4;
    public static final short COIN_BIT = 8;
    public static final short DESTROYED_BIT = 16;
    public static final short OBJECT_BIT = 32;
    public static final short ENEMY_BIT = 64;
    public static final short ENEMY_HEAD_BIT = 128;
    public static final short ITEM_BIT = 256;
    public static final short MARIO_HEAD_BIT = 512;
}
