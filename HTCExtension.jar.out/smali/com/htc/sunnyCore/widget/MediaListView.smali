.class public abstract Lcom/htc/sunnyCore/widget/MediaListView;
.super Lcom/htc/sunnyCore/view/SViewGroup;
.source "MediaListView.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/ISViewDataChangeHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/widget/MediaListView$1;,
        Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mMediaList:Lcom/htc/sunnyCore/IMediaList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 19
    const-class v0, Lcom/htc/sunnyCore/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunnyCore/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    .line 32
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/MediaListView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 2
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 19
    const-class v0, Lcom/htc/sunnyCore/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunnyCore/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    .line 37
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/MediaListView;->init()V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 2
    .parameter "mode"
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunnyCore/view/SViewGroup;-><init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 19
    const-class v0, Lcom/htc/sunnyCore/widget/MediaListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;-><init>(Lcom/htc/sunnyCore/widget/MediaListView$1;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    .line 27
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/MediaListView;->init()V

    .line 28
    return-void
.end method

.method private checkSetMediaListComplete_block()V
    .locals 4

    .prologue
    .line 71
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    iget-boolean v1, v1, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->isProcess:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 74
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 81
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/MediaListView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 42
    return-void
.end method


# virtual methods
.method public getMediaList()Lcom/htc/sunnyCore/IMediaList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    return-object v0
.end method

.method public notifyMediaDataChange()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/MediaListView;->requestLayout()V

    .line 98
    return-void
.end method

.method public notifyMediaDataChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/MediaListView;->requestLayout()V

    .line 102
    return-void
.end method

.method protected onLayout(ZFFFII)V
    .locals 3
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 48
    invoke-super/range {p0 .. p6}, Lcom/htc/sunnyCore/view/SViewGroup;->onLayout(ZFFFII)V

    .line 50
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    monitor-enter v1

    .line 51
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    iget-boolean v2, v2, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->isProcess:Z

    if-ne v0, v2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunnyCore/IMediaList;

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    .line 54
    invoke-virtual/range {p0 .. p6}, Lcom/htc/sunnyCore/widget/MediaListView;->onLayoutChildView(ZFFFII)V

    .line 56
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->isProcess:Z

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 59
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/htc/sunnyCore/widget/MediaListView;->onLayoutChildView(ZFFFII)V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onLayoutChildView(ZFFFII)V
.end method

.method public setMediaList(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<*>;"
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/MediaListView;->mSetMediaList:Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/MediaListView$SetMediaList;->set(Lcom/htc/sunnyCore/IMediaList;)V

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/MediaListView;->requestLayout()V

    .line 94
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMediaList_block(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunnyCore/IMediaList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, list:Lcom/htc/sunnyCore/IMediaList;,"Lcom/htc/sunnyCore/IMediaList<*>;"
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/widget/MediaListView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 85
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/MediaListView;->checkSetMediaListComplete_block()V

    .line 86
    return-void
.end method
