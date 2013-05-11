.class public Lcom/htc/sunnyCore/SpriteBlur;
.super Lcom/htc/sunnyCore/Sprite;
.source "SpriteBlur.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpriteBlur"


# direct methods
.method protected constructor <init>()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 26
    invoke-direct {p0}, Lcom/htc/sunnyCore/Sprite;-><init>()V

    .line 27
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v7

    iput v7, p0, Lcom/htc/sunnyCore/Sprite;->mSunnyEnvironment:I

    .line 29
    const/4 v7, 0x1

    iput v7, p0, Lcom/htc/sunnyCore/Sprite;->mLayersCount:I

    .line 30
    iget v7, p0, Lcom/htc/sunnyCore/Sprite;->mSunnyEnvironment:I

    invoke-static {v7}, Lcom/htc/sunnyCore/SunnyCore;->CreateBlurSprite(I)I

    move-result v7

    iput v7, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    .line 31
    iget v7, p0, Lcom/htc/sunnyCore/Sprite;->mLayersCount:I

    new-array v7, v7, [Lcom/htc/sunnyCore/Sprite$Layer;

    iput-object v7, p0, Lcom/htc/sunnyCore/Sprite;->mLayers:[Lcom/htc/sunnyCore/Sprite$Layer;

    .line 32
    const/4 v4, 0x0

    .local v4, id:I
    :goto_0
    iget v7, p0, Lcom/htc/sunnyCore/Sprite;->mLayersCount:I

    if-ge v4, v7, :cond_0

    .line 34
    iget-object v7, p0, Lcom/htc/sunnyCore/Sprite;->mLayers:[Lcom/htc/sunnyCore/Sprite$Layer;

    new-instance v8, Lcom/htc/sunnyCore/Sprite$Layer;

    invoke-direct {v8, p0, v4}, Lcom/htc/sunnyCore/Sprite$Layer;-><init>(Lcom/htc/sunnyCore/Sprite;I)V

    aput-object v8, v7, v4

    .line 32
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/sunnyCore/SpriteBlur;->setTouchable(Z)V

    .line 39
    iput v9, p0, Lcom/htc/sunnyCore/Sprite;->mXPosition:F

    .line 40
    iput v9, p0, Lcom/htc/sunnyCore/Sprite;->mYPosition:F

    .line 41
    iput v9, p0, Lcom/htc/sunnyCore/Sprite;->mZPosition:F

    .line 43
    iput v10, p0, Lcom/htc/sunnyCore/Sprite;->mXScale:F

    .line 44
    iput v10, p0, Lcom/htc/sunnyCore/Sprite;->mYScale:F

    .line 45
    iput v10, p0, Lcom/htc/sunnyCore/Sprite;->mZScale:F

    .line 47
    iput v9, p0, Lcom/htc/sunnyCore/Sprite;->mXRotate:F

    .line 48
    iput v9, p0, Lcom/htc/sunnyCore/Sprite;->mYRotate:F

    .line 49
    iput v9, p0, Lcom/htc/sunnyCore/Sprite;->mZRotate:F

    .line 51
    sget-boolean v7, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 52
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 53
    .local v2, elems:[Ljava/lang/StackTraceElement;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 55
    .local v1, e:Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    .end local v1           #e:Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/sunnyCore/Sprite;->mCreateStack:Ljava/lang/String;

    .line 60
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #elems:[Ljava/lang/StackTraceElement;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_2
    sget-object v8, Lcom/htc/sunnyCore/SpriteBlur;->sSpriteList:Ljava/util/List;

    monitor-enter v8

    .line 61
    :try_start_0
    sget-object v7, Lcom/htc/sunnyCore/SpriteBlur;->sSpriteList:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v8

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public static obtain()Lcom/htc/sunnyCore/SpriteBlur;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/htc/sunnyCore/SpriteBlur;

    invoke-direct {v0}, Lcom/htc/sunnyCore/SpriteBlur;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->DestroyBlurSprite(I)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/Sprite;->mNodeId:I

    .line 73
    sget-object v1, Lcom/htc/sunnyCore/SpriteBlur;->sSpriteList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    sget-object v0, Lcom/htc/sunnyCore/SpriteBlur;->sSpriteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
