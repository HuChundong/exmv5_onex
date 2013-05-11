.class public Lcom/htc/sunnyCore/Sprite$Layer;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layer"
.end annotation


# instance fields
.field private mHeight:F

.field private mIsVisible:Z

.field private mLayerId:I

.field private mWidth:F

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/htc/sunnyCore/Sprite;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/Sprite;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput p2, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    .line 505
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/Sprite$Layer;->setVisible(Z)V

    .line 506
    return-void
.end method


# virtual methods
.method public enableColorBlending(Z)V
    .locals 2
    .parameter "enableColorBlending"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_EnableColorBlending(IIZ)V

    .line 663
    return-void
.end method

.method public getGeometry()[I
    .locals 3

    .prologue
    .line 512
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mWidth:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mHeight:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mX:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mY:F

    float-to-int v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getLayerId()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    return v0
.end method

.method public getNodeId()I
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mIsVisible:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetAlpha(III)V

    .line 649
    return-void
.end method

.method public setColor(III)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetColor(IIIII)V

    .line 642
    return-void
.end method

.method public setRGBOperation(I)V
    .locals 2
    .parameter "rgbOp"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetRGBOperation(III)V

    .line 656
    return-void
.end method

.method public setRenderable(Z)V
    .locals 2
    .parameter "renderable"

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetLayerRenderable(IIZ)V

    .line 626
    :cond_0
    return-void
.end method

.method public setTexture(II)V
    .locals 2
    .parameter "textureIndex"
    .parameter "texture"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTexture(IIII)Z

    .line 543
    return-void
.end method

.method public setTexture(ILcom/htc/sunnyCore/Texture;)V
    .locals 3
    .parameter "textureIndex"
    .parameter "texture"

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, textureId:I
    if-eqz p2, :cond_0

    .line 532
    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v0

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v1, v1, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v2, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v1, v2, p1, v0}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTexture(IIII)Z

    .line 535
    return-void
.end method

.method public setTextureCoordinatesBy2P(FFFF)V
    .locals 6
    .parameter "u0"
    .parameter "v0"
    .parameter "u1"
    .parameter "v1"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 567
    return-void
.end method

.method public setTextureRotate(I)V
    .locals 14
    .parameter "rotateDegrees"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 573
    sparse-switch p1, :sswitch_data_0

    .line 584
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v4, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    move v6, v2

    move v7, v2

    move v8, v3

    move v9, v3

    invoke-static/range {v4 .. v9}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 586
    :goto_0
    return-void

    .line 575
    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    move v4, v3

    move v5, v3

    move v6, v2

    move v7, v2

    move v8, v3

    move v9, v2

    invoke-static/range {v0 .. v9}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 578
    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v4, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v3

    move v12, v2

    move v13, v2

    invoke-static/range {v4 .. v13}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 581
    :sswitch_2
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v4, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    move v6, v3

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v3

    move v11, v3

    move v12, v2

    move v13, v3

    invoke-static/range {v4 .. v13}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setTouchable(IIZ)V
    .locals 2
    .parameter "sprite"
    .parameter "layerIndex"
    .parameter "touchable"

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p3}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetLayerTouchable(IIZ)V

    .line 635
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mIsVisible:Z

    .line 593
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetLayerVisible(IIZ)V

    .line 594
    return-void
.end method

.method public setupGeometry(FFFFF)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "originX"
    .parameter "originY"
    .parameter "originZ"

    .prologue
    .line 519
    iput p3, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mX:F

    .line 520
    iput p4, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mY:F

    .line 521
    iput p2, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mHeight:F

    .line 522
    iput p1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mWidth:F

    .line 523
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetupGeometry(IIFFFFF)V

    .line 524
    return-void
.end method

.method public setupTextureWithTextureInfoAndRotate(III)V
    .locals 2
    .parameter "textureIndex"
    .parameter "texture"
    .parameter "degreesOfDisplayRotate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTexture(IIII)Z

    .line 559
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetupTextureCoordinatesByInfo(IIII)Z

    .line 560
    return-void
.end method

.method public setupTextureWithTextureInfoAndRotate(ILcom/htc/sunnyCore/Texture;I)V
    .locals 3
    .parameter "textureIndex"
    .parameter "texture"
    .parameter "degreesOfDisplayRotate"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetTexture(IIII)Z

    .line 550
    iget-object v0, p0, Lcom/htc/sunnyCore/Sprite$Layer;->this$0:Lcom/htc/sunnyCore/Sprite;

    iget v0, v0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunnyCore/Sprite$Layer;->mLayerId:I

    invoke-virtual {p2}, Lcom/htc/sunnyCore/Texture;->getHandler()I

    move-result v2

    invoke-static {v0, v1, v2, p3}, Lcom/htc/sunnyCore/SunnyCore;->Sprite_SetupTextureCoordinatesByInfo(IIII)Z

    .line 551
    return-void
.end method
