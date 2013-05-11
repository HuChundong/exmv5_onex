.class Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"

# interfaces
.implements Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V
    .locals 0
    .parameter

    .prologue
    .line 1996
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1996
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$CallbackListener;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V

    return-void
.end method


# virtual methods
.method public onTaskCancel(Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 2015
    if-nez p1, :cond_0

    .line 2017
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][FullFilmViewPreparator][CallbackListener][onTaskCancel]null task"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    .end local p1
    :goto_0
    return-void

    .line 2020
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    .line 2021
    .local v0, item:Lcom/htc/sunny2/common/CacheItem;
    instance-of v1, p1, Lcom/htc/sunny2/common/IterationTaskGallery;

    if-eqz v1, :cond_1

    .line 2023
    check-cast p1, Lcom/htc/sunny2/common/IterationTaskGallery;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/sunny2/common/IterationTaskGallery;->getCacheItem()Lcom/htc/sunny2/common/CacheItem;

    move-result-object v0

    .line 2025
    :cond_1
    if-nez v0, :cond_2

    .line 2027
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;->TAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][FullFilmViewPreparator][CallbackListener][onTaskCancel]null item"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2030
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/common/CacheItem;->release()V

    goto :goto_0
.end method

.method public onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 0
    .parameter "bundle"
    .parameter "task"

    .prologue
    .line 2010
    return-void
.end method

.method public onTaskStart(Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 1999
    return-void
.end method
