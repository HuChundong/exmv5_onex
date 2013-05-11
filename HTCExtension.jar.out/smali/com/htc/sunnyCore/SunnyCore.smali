.class public Lcom/htc/sunnyCore/SunnyCore;
.super Ljava/lang/Object;
.source "SunnyCore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ABGR_8888:I = 0x148888

.field public static final BOTTOM_BORDER:I = 0x8

.field public static final LEFT_BORDER:I = 0x1

.field public static final RENDER_BY_CHILD_DEFAULT_ORDER:I = 0x0

.field public static final RENDER_BY_CHILD_RENDER_ORDER:I = 0x1

.field public static final RGBA_5551:I = 0x25551

.field public static final RGB_565:I = 0x25650

.field public static final RGB_OP_DEFAULT:I = 0x0

.field public static final RGB_OP_T_m_C:I = 0x1

.field public static final RIGHT_BORDER:I = 0x2

.field public static final TI_SOURCE_IMAGE_DIMENSION:I = 0x0

.field public static final TI_TEXTURE_DIMENSION:I = 0x1

.field public static final TI_VALID_AREA_DIMENSION:I = 0x2

.field public static final TOP_BORDER:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap_LoadFromFile(ILjava/lang/String;III)Z
    .locals 1
    .parameter "bitmap"
    .parameter "filePath"
    .parameter "targetPixelFormat"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 887
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/Sunny2;->Bitmap_LoadFromFile(ILjava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public static Bitmap_Set(ILandroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bitmap"
    .parameter "androidBitmap"

    .prologue
    .line 651
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public static Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z
    .locals 1
    .parameter "bitmap"
    .parameter "androidBitmap"
    .parameter "targetPixelFormat"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "transparentBorders"

    .prologue
    .line 687
    invoke-static/range {p0 .. p5}, Lcom/htc/sunny2/Sunny2;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    move-result v0

    return v0
.end method

.method public static BlurSprite_SetBlurParameter(IIF)Z
    .locals 1
    .parameter "sprite"
    .parameter "context"
    .parameter "blur"

    .prologue
    .line 601
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->BlurSprite_SetBlurParameter(IIF)Z

    move-result v0

    return v0
.end method

.method public static BlurSprite_SetTexture(IIIF)Z
    .locals 1
    .parameter "sprite"
    .parameter "context"
    .parameter "texture"
    .parameter "maxBlur"

    .prologue
    .line 594
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->BlurSprite_SetTexture(IIIF)Z

    move-result v0

    return v0
.end method

.method public static Camera_2DIsometricSetup(IFFF)V
    .locals 0
    .parameter "camera"
    .parameter "fov"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 448
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Camera_2DIsometricSetup(IFFF)V

    .line 449
    return-void
.end method

.method public static CapsIterator_Next(II)I
    .locals 1
    .parameter "iterator"
    .parameter "timeMillisToDo"

    .prologue
    .line 816
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->CapsIterator_Next(II)I

    move-result v0

    return v0
.end method

.method public static CapsSession_Crop(IIIII)Z
    .locals 1
    .parameter "session"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 861
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/Sunny2;->CapsSession_Crop(IIIII)Z

    move-result v0

    return v0
.end method

.method public static CapsSession_GetHeight(I)I
    .locals 1
    .parameter "session"

    .prologue
    .line 853
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CapsSession_GetHeight(I)I

    move-result v0

    return v0
.end method

.method public static CapsSession_GetWidth(I)I
    .locals 1
    .parameter "session"

    .prologue
    .line 846
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CapsSession_GetWidth(I)I

    move-result v0

    return v0
.end method

.method public static CapsSession_StretchRenderToBitmap(IIIIII)Z
    .locals 1
    .parameter "session"
    .parameter "targetPixelFormat"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "bitmap"
    .parameter "iterator"

    .prologue
    .line 869
    invoke-static/range {p0 .. p5}, Lcom/htc/sunny2/Sunny2;->CapsSession_StretchRenderToBitmap(IIIIII)Z

    move-result v0

    return v0
.end method

.method public static CapsSession_StretchRenderToJpegFile(IIIILjava/lang/String;I)Z
    .locals 1
    .parameter "session"
    .parameter "targetPixelFormat"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "saveFilePath"
    .parameter "iterator"

    .prologue
    .line 876
    invoke-static/range {p0 .. p5}, Lcom/htc/sunny2/Sunny2;->CapsSession_StretchRenderToJpegFile(IIIILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static Context_RemoveFromCurrentThread(I)V
    .locals 0
    .parameter "context"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Context_RemoveFromCurrentThread(I)V

    .line 101
    return-void
.end method

.method public static Context_RunOnCurrentThread(I)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Context_RunOnCurrentThread(I)Z

    move-result v0

    return v0
.end method

.method public static CreateBitmap(I)I
    .locals 1
    .parameter "environment"

    .prologue
    .line 636
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateBitmap(I)I

    move-result v0

    return v0
.end method

.method public static CreateBlurSprite(I)I
    .locals 1
    .parameter "environment"

    .prologue
    .line 580
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateBlurSprite(I)I

    move-result v0

    return v0
.end method

.method public static CreateCapsIterator()I
    .locals 1

    .prologue
    .line 801
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->CreateCapsIterator()I

    move-result v0

    return v0
.end method

.method public static CreateCapsSessionByBitmap(I)I
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 831
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateCapsSessionByBitmap(I)I

    move-result v0

    return v0
.end method

.method public static CreateCapsSessionByFilePath(Ljava/lang/String;)I
    .locals 1
    .parameter "filePath"

    .prologue
    .line 824
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateCapsSessionByFilePath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static CreateContext(IIIIIIII)I
    .locals 1
    .parameter "environment"
    .parameter "surfaceRBytes"
    .parameter "surfaceGBytes"
    .parameter "surfaceBBytes"
    .parameter "surfaceABytes"
    .parameter "reserved1"
    .parameter "reserved2"
    .parameter "reserved3"

    .prologue
    .line 78
    invoke-static/range {p0 .. p7}, Lcom/htc/sunny2/Sunny2;->CreateContext(IIIIIIII)I

    move-result v0

    return v0
.end method

.method public static CreateScene(I)I
    .locals 1
    .parameter "environment"

    .prologue
    .line 255
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateScene(I)I

    move-result v0

    return v0
.end method

.method public static CreateSceneNode(I)I
    .locals 1
    .parameter "environment"

    .prologue
    .line 287
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateSceneNode(I)I

    move-result v0

    return v0
.end method

.method public static CreateScissor(I)I
    .locals 1
    .parameter "environment"

    .prologue
    .line 610
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateScissor(I)I

    move-result v0

    return v0
.end method

.method public static CreateSprite(II)I
    .locals 1
    .parameter "environment"
    .parameter "layersCount"

    .prologue
    .line 458
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->CreateSprite(II)I

    move-result v0

    return v0
.end method

.method public static CreateSpriteWithConfig(IIZ)I
    .locals 1
    .parameter "environment"
    .parameter "layersCount"
    .parameter "showFirstLayerInFront"

    .prologue
    .line 465
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->CreateSpriteWithConfig(IIZ)I

    move-result v0

    return v0
.end method

.method public static CreateTexture(I)I
    .locals 1
    .parameter "environment"

    .prologue
    .line 697
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateTexture(I)I

    move-result v0

    return v0
.end method

.method public static CreateWindow(I)I
    .locals 1
    .parameter "environment"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->CreateWindow(I)I

    move-result v0

    return v0
.end method

.method public static CreateWindowByContext(II)I
    .locals 1
    .parameter "environment"
    .parameter "context"

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->CreateWindowByContext(II)I

    move-result v0

    return v0
.end method

.method public static DeinitEnvironment(I)V
    .locals 0
    .parameter "environment"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DeinitEnvironment(I)V

    .line 61
    return-void
.end method

.method public static DestroyBitmap(I)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 643
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyBitmap(I)V

    .line 644
    return-void
.end method

.method public static DestroyBlurSprite(I)V
    .locals 0
    .parameter "sprite"

    .prologue
    .line 587
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyBlurSprite(I)V

    .line 588
    return-void
.end method

.method public static DestroyCapsIterator(I)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 808
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyCapsIterator(I)V

    .line 809
    return-void
.end method

.method public static DestroyCapsSession(I)V
    .locals 0
    .parameter "session"

    .prologue
    .line 838
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyCapsSession(I)V

    .line 839
    return-void
.end method

.method public static DestroyContext(I)V
    .locals 0
    .parameter "context"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyContext(I)V

    .line 86
    return-void
.end method

.method public static DestroyScene(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 262
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyScene(I)V

    .line 263
    return-void
.end method

.method public static DestroySceneNode(I)V
    .locals 0
    .parameter "node"

    .prologue
    .line 294
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroySceneNode(I)V

    .line 295
    return-void
.end method

.method public static DestroyScissor(I)V
    .locals 0
    .parameter "scissor"

    .prologue
    .line 617
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyScissor(I)V

    .line 618
    return-void
.end method

.method public static DestroySprite(I)V
    .locals 0
    .parameter "sprite"

    .prologue
    .line 472
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroySprite(I)V

    .line 473
    return-void
.end method

.method public static DestroyTexture(I)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 704
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyTexture(I)V

    .line 705
    return-void
.end method

.method public static DestroyWindow(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 124
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->DestroyWindow(I)V

    .line 125
    return-void
.end method

.method public static Environment_LogStatus(I)V
    .locals 0
    .parameter "environment"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Environment_LogStatus(I)V

    .line 69
    return-void
.end method

.method public static InitEnvironment()I
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->InitEnvironment()I

    move-result v0

    return v0
.end method

.method public static InitEnvironmentWithConfig(IIIIIII)I
    .locals 1
    .parameter "surfaceRBytes"
    .parameter "surfaceGBytes"
    .parameter "surfaceBBytes"
    .parameter "surfaceABytes"
    .parameter "reserved1"
    .parameter "reserved2"
    .parameter "reserved3"

    .prologue
    .line 53
    invoke-static/range {p0 .. p6}, Lcom/htc/sunny2/Sunny2;->InitEnvironmentWithConfig(IIIIIII)I

    move-result v0

    return v0
.end method

.method public static SceneNode_AddChild(II)Z
    .locals 1
    .parameter "node"
    .parameter "childNode"

    .prologue
    .line 302
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddChild(II)Z

    move-result v0

    return v0
.end method

.method public static SceneNode_AddPartialSceneRenderFlag(IIZ)V
    .locals 0
    .parameter "node"
    .parameter "renderFlag"
    .parameter "applyToChildren"

    .prologue
    .line 428
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddPartialSceneRenderFlag(IIZ)V

    .line 429
    return-void
.end method

.method public static SceneNode_GetChildrenRenderOrderMode(I)I
    .locals 1
    .parameter "node"

    .prologue
    .line 347
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetChildrenRenderOrderMode(I)I

    move-result v0

    return v0
.end method

.method public static SceneNode_GetRenderOrder(I)I
    .locals 1
    .parameter "node"

    .prologue
    .line 361
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetRenderOrder(I)I

    move-result v0

    return v0
.end method

.method public static SceneNode_GetUserData(I)Ljava/lang/Object;
    .locals 1
    .parameter "node"

    .prologue
    .line 406
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetUserData(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static SceneNode_GetUserFlag(I)I
    .locals 1
    .parameter "node"

    .prologue
    .line 420
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetUserFlag(I)I

    move-result v0

    return v0
.end method

.method public static SceneNode_GetVisible(I)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 324
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetVisible(I)Z

    move-result v0

    return v0
.end method

.method public static SceneNode_RemoveChild(II)V
    .locals 0
    .parameter "node"
    .parameter "childNode"

    .prologue
    .line 309
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemoveChild(II)V

    .line 310
    return-void
.end method

.method public static SceneNode_RemovePartialSceneRenderFlag(IIZ)V
    .locals 0
    .parameter "node"
    .parameter "renderFlag"
    .parameter "applyToChildren"

    .prologue
    .line 435
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->SceneNode_RemovePartialSceneRenderFlag(IIZ)V

    .line 436
    return-void
.end method

.method public static SceneNode_SetChildrenRenderOrderMode(II)V
    .locals 0
    .parameter "node"
    .parameter "childrenRenderOrderMode"

    .prologue
    .line 340
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 341
    return-void
.end method

.method public static SceneNode_SetGroupAlpha(IF)V
    .locals 0
    .parameter "node"
    .parameter "groupAlpha"

    .prologue
    .line 391
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetGroupAlpha(IF)V

    .line 392
    return-void
.end method

.method public static SceneNode_SetPosition(IFFF)V
    .locals 0
    .parameter "node"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 383
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetPosition(IFFF)V

    .line 384
    return-void
.end method

.method public static SceneNode_SetRenderOrder(II)V
    .locals 0
    .parameter "node"
    .parameter "renderOrder"

    .prologue
    .line 354
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRenderOrder(II)V

    .line 355
    return-void
.end method

.method public static SceneNode_SetRotate(IFFF)V
    .locals 0
    .parameter "node"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 376
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRotate(IFFF)V

    .line 377
    return-void
.end method

.method public static SceneNode_SetScale(IFFF)V
    .locals 0
    .parameter "node"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 369
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    .line 370
    return-void
.end method

.method public static SceneNode_SetUserData(ILjava/lang/Object;)V
    .locals 0
    .parameter "node"
    .parameter "userData"

    .prologue
    .line 399
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetUserData(ILjava/lang/Object;)V

    .line 400
    return-void
.end method

.method public static SceneNode_SetUserFlag(II)V
    .locals 0
    .parameter "node"
    .parameter "userFlag"

    .prologue
    .line 413
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetUserFlag(II)V

    .line 414
    return-void
.end method

.method public static SceneNode_SetVisible(IZ)V
    .locals 0
    .parameter "node"
    .parameter "visible"

    .prologue
    .line 317
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetVisible(IZ)V

    .line 318
    return-void
.end method

.method public static Scene_GetDefaultCamera(I)I
    .locals 1
    .parameter "scene"

    .prologue
    .line 270
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Scene_GetDefaultCamera(I)I

    move-result v0

    return v0
.end method

.method public static Scene_GetRootNode(I)I
    .locals 1
    .parameter "scene"

    .prologue
    .line 277
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Scene_GetRootNode(I)I

    move-result v0

    return v0
.end method

.method public static Scissor_SetArea(IIIII)V
    .locals 0
    .parameter "scissor"
    .parameter "xOnViewport"
    .parameter "yOnViewport"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 625
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/Sunny2;->Scissor_SetArea(IIIII)V

    .line 626
    return-void
.end method

.method public static Sprite_EnableColorBlending(IIZ)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "enableColorBlending"

    .prologue
    .line 564
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_EnableColorBlending(IIZ)V

    .line 565
    return-void
.end method

.method public static Sprite_SetAlpha(III)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "alpha"

    .prologue
    .line 540
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetAlpha(III)V

    .line 541
    return-void
.end method

.method public static Sprite_SetColor(IIIII)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 533
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/Sunny2;->Sprite_SetColor(IIIII)V

    .line 534
    return-void
.end method

.method public static Sprite_SetLayerRenderable(IIZ)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "renderable"

    .prologue
    .line 517
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerRenderable(IIZ)V

    .line 518
    return-void
.end method

.method public static Sprite_SetLayerTouchable(IIZ)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "touchable"

    .prologue
    .line 525
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerTouchable(IIZ)V

    .line 526
    return-void
.end method

.method public static Sprite_SetLayerVisible(IIZ)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "visible"

    .prologue
    .line 509
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerVisible(IIZ)V

    .line 510
    return-void
.end method

.method public static Sprite_SetRGBOperation(III)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "rgbOp"

    .prologue
    .line 556
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetRGBOperation(III)V

    .line 557
    return-void
.end method

.method public static Sprite_SetTexture(IIII)Z
    .locals 1
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "textureIndex"
    .parameter "texture"

    .prologue
    .line 487
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    move-result v0

    return v0
.end method

.method public static Sprite_SetTextureCoordinatesBy2P(IIFFFF)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "u0"
    .parameter "v0"
    .parameter "u1"
    .parameter "v1"

    .prologue
    .line 494
    invoke-static/range {p0 .. p5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 495
    return-void
.end method

.method public static Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "leftTopU"
    .parameter "leftTopV"
    .parameter "leftBottomU"
    .parameter "leftBottomV"
    .parameter "rightTopU"
    .parameter "rightTopV"
    .parameter "rightBottomU"
    .parameter "rightBottomV"

    .prologue
    .line 501
    invoke-static/range {p0 .. p9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    .line 502
    return-void
.end method

.method public static Sprite_SetTouchable(IZ)V
    .locals 0
    .parameter "sprite"
    .parameter "touchable"

    .prologue
    .line 572
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTouchable(IZ)V

    .line 573
    return-void
.end method

.method public static Sprite_SetupGeometry(IIFFFFF)V
    .locals 0
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "width"
    .parameter "height"
    .parameter "originX"
    .parameter "originY"
    .parameter "originZ"

    .prologue
    .line 480
    invoke-static/range {p0 .. p6}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupGeometry(IIFFFFF)V

    .line 481
    return-void
.end method

.method public static Sprite_SetupTextureCoordinatesByInfo(IIII)Z
    .locals 1
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "textureWithUserInfo"
    .parameter "displayRotate"

    .prologue
    .line 895
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupTextureCoordinatesByInfo(IIII)Z

    move-result v0

    return v0
.end method

.method public static Texture_QueryInfo(II)I
    .locals 1
    .parameter "texture"
    .parameter "infoIndex"

    .prologue
    .line 790
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->Texture_QueryInfo(II)I

    move-result v0

    return v0
.end method

.method public static Texture_Realize(I)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 739
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Texture_Realize(I)V

    .line 740
    return-void
.end method

.method public static Texture_RealizeBlankTexture(IIII)Z
    .locals 1
    .parameter "texture"
    .parameter "pixelFormat"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 747
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Texture_RealizeBlankTexture(IIII)Z

    move-result v0

    return v0
.end method

.method public static Texture_RealizeBorder(IIIIIII)Z
    .locals 1
    .parameter "texture"
    .parameter "desX"
    .parameter "desY"
    .parameter "boarderWidth"
    .parameter "boarderHeight"
    .parameter "thickness"
    .parameter "color"

    .prologue
    .line 763
    invoke-static/range {p0 .. p6}, Lcom/htc/sunny2/Sunny2;->Texture_RealizeBorder(IIIIIII)Z

    move-result v0

    return v0
.end method

.method public static Texture_RealizeSubTexture(IIILandroid/graphics/Bitmap;IIII)Z
    .locals 1
    .parameter "texture"
    .parameter "desX"
    .parameter "desY"
    .parameter "androidBitmap"
    .parameter "srcX"
    .parameter "srcY"
    .parameter "srcWidth"
    .parameter "srcHeight"

    .prologue
    .line 754
    invoke-static/range {p0 .. p7}, Lcom/htc/sunny2/Sunny2;->Texture_RealizeSubTexture(IIILandroid/graphics/Bitmap;IIII)Z

    move-result v0

    return v0
.end method

.method public static Texture_RecordInfo(III)V
    .locals 0
    .parameter "texture"
    .parameter "infoIndex"
    .parameter "infoData"

    .prologue
    .line 783
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Texture_RecordInfo(III)V

    .line 784
    return-void
.end method

.method public static Texture_SetOESTextureTransform(IFFFFFFFFFFFFFFFF)I
    .locals 1
    .parameter "texture"
    .parameter "m11"
    .parameter "m12"
    .parameter "m13"
    .parameter "m14"
    .parameter "m21"
    .parameter "m22"
    .parameter "m23"
    .parameter "m24"
    .parameter "m31"
    .parameter "m32"
    .parameter "m33"
    .parameter "m34"
    .parameter "m41"
    .parameter "m42"
    .parameter "m43"
    .parameter "m44"

    .prologue
    .line 941
    invoke-static/range {p0 .. p16}, Lcom/htc/sunny2/Sunny2;->Texture_SetOESTextureTransform(IFFFFFFFFFFFFFFFF)I

    move-result v0

    return v0
.end method

.method public static Texture_SetupByAndroidBitmapAndRealize(ILandroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "texture"
    .parameter "androidBitmap"

    .prologue
    .line 723
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByAndroidBitmapAndRealize(ILandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public static Texture_SetupByBitmap(IIZ)Z
    .locals 1
    .parameter "texture"
    .parameter "inputBitmap"
    .parameter "discardBufferOfInputBitmap"

    .prologue
    .line 712
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByBitmap(IIZ)Z

    move-result v0

    return v0
.end method

.method public static Texture_SetupByBitmap_InRenderThread(IIZ)Z
    .locals 1
    .parameter "texture"
    .parameter "inputBitmap"
    .parameter "discardBufferOfInputBitmap"

    .prologue
    .line 719
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-result v0

    return v0
.end method

.method public static Texture_SetupByScaladoBitmap(IIZ)Z
    .locals 1
    .parameter "texture"
    .parameter "inputScaladoBitmap"
    .parameter "discardBufferOfInputScaladoBitmap"

    .prologue
    .line 727
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByScaladoBitmap(IIZ)Z

    move-result v0

    return v0
.end method

.method public static Texture_SetupByScaladoBitmapAndRealize(II)Z
    .locals 1
    .parameter "texture"
    .parameter "inputScaladoBitmap"

    .prologue
    .line 731
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByScaladoBitmapAndRealize(II)Z

    move-result v0

    return v0
.end method

.method public static Texture_SetupOESTexture(I)I
    .locals 1
    .parameter "texture"

    .prologue
    .line 928
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Texture_SetupOESTexture(I)I

    move-result v0

    return v0
.end method

.method public static Viewport_LinkCamera(II)V
    .locals 0
    .parameter "viewport"
    .parameter "camera"

    .prologue
    .line 245
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->Viewport_LinkCamera(II)V

    .line 246
    return-void
.end method

.method public static Window_BindSurface(ILandroid/view/Surface;II)Z
    .locals 1
    .parameter "window"
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Window_BindSurface(ILandroid/view/Surface;II)Z

    move-result v0

    return v0
.end method

.method public static Window_GetDefaultViewport(I)I
    .locals 1
    .parameter "window"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Window_GetDefaultViewport(I)I

    move-result v0

    return v0
.end method

.method public static Window_GetSnapshot(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "sunnyWindow"
    .parameter "rect"

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->Window_GetSnapshot(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static Window_HitTest(III)I
    .locals 1
    .parameter "window"
    .parameter "windowX"
    .parameter "windowY"

    .prologue
    .line 192
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Window_HitTest(III)I

    move-result v0

    return v0
.end method

.method private static Window_NativeGetSnapshot(IIIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "sunnyWindow"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 217
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/Sunny2;->Window_NativeGetSnapshot(IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static Window_NativeRenderPartialSceneToTexture(IIIIIIIZ)Z
    .locals 1
    .parameter "sunnyWindow"
    .parameter "texture"
    .parameter "renderFlag"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "renderInvisibleNodes"

    .prologue
    .line 233
    invoke-static/range {p0 .. p7}, Lcom/htc/sunny2/Sunny2;->Window_NativeRenderPartialSceneToTexture(IIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public static Window_Present(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 177
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Window_Present(I)V

    .line 178
    return-void
.end method

.method public static Window_QuerySceneNodeOriginPositionOnViewport(III)Z
    .locals 1
    .parameter "window"
    .parameter "viewport"
    .parameter "sceneNode"

    .prologue
    .line 201
    invoke-static {p0, p1, p2}, Lcom/htc/sunny2/Sunny2;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v0

    return v0
.end method

.method public static Window_Render(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 163
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Window_Render(I)V

    .line 164
    return-void
.end method

.method public static Window_RenderPartialSceneToTexture(IIILandroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "sunnyWindow"
    .parameter "texture"
    .parameter "renderFlag"
    .parameter "rect"
    .parameter "renderInvisibleNodes"

    .prologue
    .line 225
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/Sunny2;->Window_RenderPartialSceneToTexture(IIILandroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public static Window_RenderWithoutPresent(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 170
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Window_RenderWithoutPresent(I)V

    .line 171
    return-void
.end method

.method public static Window_SetClearColor(IFFFF)V
    .locals 0
    .parameter "window"
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/Sunny2;->Window_SetClearColor(IFFFF)V

    .line 148
    return-void
.end method

.method public static Window_SetShowFrameInfoThreshold(II)V
    .locals 0
    .parameter "window"
    .parameter "showFrameInfoThreshold"

    .prologue
    .line 184
    invoke-static {p0, p1}, Lcom/htc/sunny2/Sunny2;->Window_SetShowFrameInfoThreshold(II)V

    .line 185
    return-void
.end method

.method public static Window_UnbindSurface(I)V
    .locals 0
    .parameter "window"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/htc/sunny2/Sunny2;->Window_UnbindSurface(I)V

    .line 140
    return-void
.end method

.method public static getOutputVectorX()F
    .locals 1

    .prologue
    .line 905
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorX()F

    move-result v0

    return v0
.end method

.method public static getOutputVectorY()F
    .locals 1

    .prologue
    .line 912
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorY()F

    move-result v0

    return v0
.end method

.method public static getOutputVectorZ()F
    .locals 1

    .prologue
    .line 919
    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorZ()F

    move-result v0

    return v0
.end method
