.class public Landroid/widget/OnDemandProgressBar;
.super Landroid/widget/ProgressBar;
.source "OnDemandProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnDemandProgressBar"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OnDemandProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v0, "OnDemandProgressBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new OnDemandProgressBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 17
    .parameter "drawable"
    .parameter "clip"

    .prologue
    .line 96
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_3

    move-object/from16 v3, p1

    .line 97
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 98
    .local v3, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 99
    .local v2, N:I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    .line 101
    .local v11, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 102
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 103
    .local v6, id:I
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v14, 0x102000d

    if-eq v6, v14, :cond_0

    const v14, 0x102000f

    if-ne v6, v14, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Landroid/widget/OnDemandProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v11, v5

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 108
    .end local v6           #id:I
    :cond_2
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 110
    .local v8, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    .line 111
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v14

    invoke-virtual {v8, v5, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 116
    .end local v2           #N:I
    .end local v3           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v5           #i:I
    .end local v8           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v14, :cond_6

    move-object/from16 v7, p1

    .line 117
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    .line 118
    .local v7, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 119
    .local v10, out:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v9

    .line 120
    .local v9, numStates:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 121
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v14

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v15, v1}, Landroid/widget/OnDemandProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v10

    .line 144
    .end local v5           #i:I
    .end local v7           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v9           #numStates:I
    .end local v10           #out:Landroid/graphics/drawable/StateListDrawable;
    .end local p1
    :cond_5
    :goto_4
    return-object v8

    .line 126
    .restart local p1
    :cond_6
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_9

    .line 127
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 129
    .local v13, tileBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v14, :cond_7

    .line 130
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 133
    :cond_7
    new-instance v12, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/OnDemandProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 136
    .local v12, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v13, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 138
    .local v4, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    if-eqz p2, :cond_8

    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v12, v14

    .end local v12           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v8, v12

    goto :goto_4

    .end local v4           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v13           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_9
    move-object/from16 v8, p1

    .line 144
    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "drawable"

    .prologue
    const/16 v7, 0x2710

    .line 72
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 73
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 74
    .local v1, background:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 75
    .local v0, N:I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 76
    .local v4, newBg:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 78
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 79
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/OnDemandProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 80
    .local v2, frame:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 81
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v2           #frame:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 84
    move-object p1, v4

    .line 86
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/AnimationDrawable;
    .end local v3           #i:I
    .end local v4           #newBg:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method


# virtual methods
.method public declared-synchronized setIndeterminate(Z)V
    .locals 6
    .parameter "indeterminate"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/OnDemandProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 41
    const-string v2, "OnDemandProgressBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load indeterminate drawable on demand "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/OnDemandProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "progress_indeterminate_horizontal_holo"

    const v4, 0x10806ab

    invoke-static {v2, v3, v4}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/widget/OnDemandProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, v0}, Landroid/widget/OnDemandProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/OnDemandProgressBar;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/OnDemandProgressBar;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/OnDemandProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #id:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 57
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/OnDemandProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "OnDemandProgressBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release indeterminate drawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/OnDemandProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
