.class public Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;
.super Ljava/lang/Object;
.source "FullscreenTopOverlay.java"


# instance fields
.field private mListPlugin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumUtility/IPluginTopOverlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/AlbumUtility/IPluginTopOverlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, listPlugin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/AlbumUtility/IPluginTopOverlay;>;"
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    return-void
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 43
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->initialize()V

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public onDispatchEnterImage(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 79
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onEnterImage(I)V

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public onDispatchNotifyUpdateChange()V
    .locals 3

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 61
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onNotifyUpdateChange()V

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public onDispatchNotifyUpdateChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 70
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onNotifyUpdateChange(Ljava/lang/Object;)V

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public onDispatchScreenRotate()V
    .locals 3

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 88
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onScreenRotate()V

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public onDispatchTransformImageBegin(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 97
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onTransformImageBegin(I)V

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public onDispatchTransformImageEnd(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 106
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->onTransformImageEnd(I)V

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    return-void
.end method

.method public setAdater(Landroid/widget/BaseAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 25
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->setAdater(Landroid/widget/BaseAdapter;)V

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public setShowHideOverlay(Z)V
    .locals 3
    .parameter "bIsShow"

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 34
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1, p1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->setShowHide(Z)V

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public unInitialize()V
    .locals 3

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    const/4 v0, 0x0

    .local v0, nPuginIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 52
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/FullscreenTopOverlay;->mListPlugin:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    check-cast v1, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;

    .restart local v1       #overLay:Lcom/htc/album/AlbumUtility/IPluginTopOverlay;
    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1}, Lcom/htc/album/AlbumUtility/IPluginTopOverlay;->unInitialize()V

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method
