.class public Lcom/htc/sunnyCore/SceneNode;
.super Ljava/lang/Object;
.source "SceneNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/SceneNode$1;,
        Lcom/htc/sunnyCore/SceneNode$NODE_MODE;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneNode"

.field static sSceneNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunnyCore/SceneNode;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mChilds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sunnyCore/SceneNode;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateStack:Ljava/lang/String;

.field protected mModeId:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

.field protected mNodeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/htc/sunnyCore/SceneNode$NODE_MODE;->NODE_MODE_SCENENODE:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    invoke-direct {p0, v0}, Lcom/htc/sunnyCore/SceneNode;-><init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/htc/sunnyCore/SunnyEnvironment;->instance()Lcom/htc/sunnyCore/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunnyCore/SunnyEnvironment;->getHandler()I

    move-result v0

    .line 71
    .local v0, env:I
    sget-object v1, Lcom/htc/sunnyCore/SceneNode$1;->$SwitchMap$com$htc$sunnyCore$SceneNode$NODE_MODE:[I

    invoke-virtual {p1}, Lcom/htc/sunnyCore/SceneNode$NODE_MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    sget-object v1, Lcom/htc/sunnyCore/SceneNode$NODE_MODE;->NONE:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    iput-object v1, p0, Lcom/htc/sunnyCore/SceneNode;->mModeId:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    .line 96
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/sunnyCore/SceneNode;->setRenderOrderMode(I)V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    .line 109
    sget-object v2, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    monitor-enter v2

    .line 110
    :try_start_0
    sget-object v1, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    return-void

    .line 74
    :pswitch_0
    iput-object p1, p0, Lcom/htc/sunnyCore/SceneNode;->mModeId:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    .line 75
    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->CreateSceneNode(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    .line 76
    iget v1, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SceneNode init with null node id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :pswitch_1
    iput-object p1, p0, Lcom/htc/sunnyCore/SceneNode;->mModeId:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    .line 84
    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->CreateScissor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    .line 85
    iget v1, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ScissorNode init with null node id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static obtain()Lcom/htc/sunnyCore/SceneNode;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/htc/sunnyCore/SceneNode;

    invoke-direct {v0}, Lcom/htc/sunnyCore/SceneNode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_AddChild(II)Z

    .line 251
    return-void
.end method

.method public addSprite(Lcom/htc/sunnyCore/Sprite;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 264
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_AddChild(II)Z

    .line 265
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/htc/sunnyCore/SceneNode;->release()V

    .line 286
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 287
    return-void
.end method

.method public getChild(I)Lcom/htc/sunnyCore/SceneNode;
    .locals 1
    .parameter "index"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/SceneNode;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/sunnyCore/SceneNode;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_GetVisible(I)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 125
    iget v5, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    if-eqz v5, :cond_6

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v3, removeSceneNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunnyCore/SceneNode;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/SceneNode;

    .line 128
    .local v0, child:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/SceneNode;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 130
    invoke-virtual {v0}, Lcom/htc/sunnyCore/SceneNode;->release()V

    goto :goto_0

    .line 132
    .end local v0           #child:Lcom/htc/sunnyCore/SceneNode;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 134
    sget-object v6, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    monitor-enter v6

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;"
    :try_start_0
    sget-object v5, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 137
    .local v4, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_2

    .line 138
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 139
    move-object v2, v4

    .line 143
    .end local v4           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;"
    :cond_3
    if-eqz v2, :cond_4

    .line 144
    sget-object v5, Lcom/htc/sunnyCore/SceneNode;->sSceneNodeList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    sget-object v5, Lcom/htc/sunnyCore/SceneNode$1;->$SwitchMap$com$htc$sunnyCore$SceneNode$NODE_MODE:[I

    iget-object v6, p0, Lcom/htc/sunnyCore/SceneNode;->mModeId:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/SceneNode$NODE_MODE;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 162
    :goto_1
    iget v5, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    if-eqz v5, :cond_5

    .line 163
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Don\'t delete Node: mNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mModeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunnyCore/SceneNode;->mModeId:Lcom/htc/sunnyCore/SceneNode$NODE_MODE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 151
    :pswitch_0
    iget v5, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v5}, Lcom/htc/sunnyCore/SunnyCore;->DestroySceneNode(I)V

    .line 152
    iput v7, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    goto :goto_1

    .line 157
    :pswitch_1
    iget v5, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v5}, Lcom/htc/sunnyCore/SunnyCore;->DestroyScissor(I)V

    .line 158
    iput v7, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    goto :goto_1

    .line 166
    :cond_5
    iput v7, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    .line 168
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunnyCore/SceneNode;>;"
    .end local v3           #removeSceneNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunnyCore/SceneNode;>;"
    :cond_6
    return-void

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 241
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunnyCore/SceneNode;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_RemoveChild(II)V

    .line 242
    iget-object v0, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public removeSprite(Lcom/htc/sunnyCore/Sprite;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 257
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-virtual {p1}, Lcom/htc/sunnyCore/Sprite;->getNodeId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_RemoveChild(II)V

    .line 258
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 184
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetGroupAlpha(IF)V

    .line 185
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 198
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetPosition(IFFF)V

    .line 199
    return-void
.end method

.method public setRenderOrder(I)V
    .locals 1
    .parameter "renderOrder"

    .prologue
    .line 227
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRenderOrder(II)V

    .line 228
    return-void
.end method

.method public setRenderOrderMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 234
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 235
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 205
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetRotate(IFFF)V

    .line 206
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "sX"
    .parameter "sY"
    .parameter "sZ"

    .prologue
    .line 191
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetScale(IFFF)V

    .line 192
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 212
    iget v0, p0, Lcom/htc/sunnyCore/SceneNode;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunnyCore/SunnyCore;->SceneNode_SetVisible(IZ)V

    .line 213
    return-void
.end method
