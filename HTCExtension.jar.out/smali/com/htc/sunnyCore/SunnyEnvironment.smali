.class public Lcom/htc/sunnyCore/SunnyEnvironment;
.super Ljava/lang/Object;
.source "SunnyEnvironment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOCKER:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static sEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;


# instance fields
.field private mEnvironment:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/SunnyEnvironment;->LOCKER:Ljava/lang/Object;

    .line 20
    const-class v0, Lcom/htc/sunnyCore/SunnyEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunnyCore/SunnyEnvironment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/SunnyEnvironment;->mEnvironment:I

    .line 41
    iget v0, p0, Lcom/htc/sunnyCore/SunnyEnvironment;->mEnvironment:I

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/htc/sunnyCore/SunnyCore;->InitEnvironment()I

    move-result v0

    iput v0, p0, Lcom/htc/sunnyCore/SunnyEnvironment;->mEnvironment:I

    .line 44
    iget v0, p0, Lcom/htc/sunnyCore/SunnyEnvironment;->mEnvironment:I

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "InitEnvironment NG"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method

.method public static instance()Lcom/htc/sunnyCore/SunnyEnvironment;
    .locals 2

    .prologue
    .line 28
    sget-object v1, Lcom/htc/sunnyCore/SunnyEnvironment;->LOCKER:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/htc/sunnyCore/SunnyEnvironment;->sEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/htc/sunnyCore/SunnyEnvironment;

    invoke-direct {v0}, Lcom/htc/sunnyCore/SunnyEnvironment;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/SunnyEnvironment;->sEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lcom/htc/sunnyCore/SunnyEnvironment;->sEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getHandler()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/sunnyCore/SunnyEnvironment;->mEnvironment:I

    return v0
.end method

.method release()V
    .locals 15

    .prologue
    .line 61
    sget-object v12, Lcom/htc/sunnyCore/SunnyEnvironment;->LOCKER:Ljava/lang/Object;

    monitor-enter v12

    .line 62
    :try_start_0
    iget v11, p0, Lcom/htc/sunnyCore/SunnyEnvironment;->mEnvironment:I

    if-eqz v11, :cond_8

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    sget-object v13, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    new-instance v3, Ljava/util/LinkedList;

    sget-object v11, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-direct {v3, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .end local v2           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    .local v3, sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    :try_start_2
    sget-object v11, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 68
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 69
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 70
    .local v9, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;"
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/SceneNode;

    .line 71
    .local v1, node:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v1, :cond_1

    .line 72
    sget-boolean v11, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/htc/sunnyCore/SunnyEnvironment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "You have leak SceneNode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SceneNode;->getCreateStack()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-virtual {v1}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 75
    :cond_1
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    .line 107
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #node:Lcom/htc/sunnyCore/SceneNode;
    .end local v3           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    .end local v9           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 68
    .restart local v2       #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    :catchall_1
    move-exception v11

    :goto_1
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v11

    .line 78
    .end local v2           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    :cond_2
    const/4 v4, 0x0

    .line 79
    .local v4, spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    sget-object v13, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    :try_start_6
    new-instance v5, Ljava/util/LinkedList;

    sget-object v11, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    invoke-direct {v5, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 81
    .end local v4           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    .local v5, spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    :try_start_7
    sget-object v11, Lcom/htc/sunnyCore/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 82
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 83
    :try_start_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/Sprite;

    .line 84
    .local v1, node:Lcom/htc/sunnyCore/Sprite;
    if-eqz v1, :cond_3

    .line 85
    sget-boolean v11, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v11, :cond_4

    sget-object v11, Lcom/htc/sunnyCore/SunnyEnvironment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "You have leak Sprite:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->getCreateStack()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_4
    invoke-virtual {v1}, Lcom/htc/sunnyCore/Sprite;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 82
    .end local v1           #node:Lcom/htc/sunnyCore/Sprite;
    .end local v5           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    .restart local v4       #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    :catchall_2
    move-exception v11

    :goto_3
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v11

    .line 90
    .end local v4           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    .restart local v5       #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    :cond_5
    const/4 v7, 0x0

    .line 91
    .local v7, textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    sget-object v13, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    monitor-enter v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 92
    :try_start_b
    new-instance v8, Ljava/util/LinkedList;

    sget-object v11, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    invoke-direct {v8, v11}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 93
    .end local v7           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    .local v8, textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    :try_start_c
    sget-object v11, Lcom/htc/sunnyCore/Texture;->sTextureList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 94
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 95
    :try_start_d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 96
    .local v10, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;"
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sunnyCore/Texture;

    .line 97
    .local v6, texture:Lcom/htc/sunnyCore/Texture;
    if-eqz v6, :cond_6

    .line 98
    sget-object v11, Lcom/htc/sunnyCore/SunnyEnvironment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "You have leak Texture:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->getCreateStack()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v6}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 101
    :cond_6
    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    .line 94
    .end local v6           #texture:Lcom/htc/sunnyCore/Texture;
    .end local v8           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    .end local v10           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;"
    .restart local v7       #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    :catchall_3
    move-exception v11

    :goto_5
    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v11

    .line 104
    .end local v7           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    .restart local v8       #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    :cond_7
    iget v11, p0, Lcom/htc/sunnyCore/SunnyEnvironment;->mEnvironment:I

    invoke-static {v11}, Lcom/htc/sunnyCore/SunnyCore;->DeinitEnvironment(I)V

    .line 106
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    .end local v5           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    .end local v8           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    :cond_8
    const/4 v11, 0x0

    sput-object v11, Lcom/htc/sunnyCore/SunnyEnvironment;->sEnvironment:Lcom/htc/sunnyCore/SunnyEnvironment;

    .line 107
    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 108
    return-void

    .line 94
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    .restart local v5       #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    .restart local v8       #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    :catchall_4
    move-exception v11

    move-object v7, v8

    .end local v8           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    .restart local v7       #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    goto :goto_5

    .line 82
    .end local v7           #textureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/Texture;>;>;"
    :catchall_5
    move-exception v11

    move-object v4, v5

    .end local v5           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    .restart local v4       #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    goto :goto_3

    .line 68
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #spriteList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunnyCore/Sprite;>;"
    :catchall_6
    move-exception v11

    move-object v2, v3

    .end local v3           #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    .restart local v2       #sceneNodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;>;"
    goto/16 :goto_1
.end method
