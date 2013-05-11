.class public abstract Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;
.source "SceneDlnaGridviewBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem",
        "<",
        "Lcom/htc/sunnyCore/widget/gridview/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;-><init>()V

    .line 25
    const-string v0, "SceneDlnaGridviewBase"

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->LOG_TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    .line 33
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 43
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    return-void
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 53
    return-void
.end method


# virtual methods
.method protected getDLNAOutputIndex()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 229
    iget v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    if-eq v5, v6, :cond_1

    .line 230
    iget v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mTVOutIndex:I

    .line 261
    :cond_0
    :goto_0
    return v4

    .line 232
    :cond_1
    const/4 v4, -0x1

    .line 234
    .local v4, pos:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getCount()I

    move-result v1

    .line 238
    .local v1, count:I
    if-lez v1, :cond_0

    .line 241
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 242
    .local v0, VisiblePos:I
    if-eq v6, v0, :cond_0

    .line 245
    const/4 v3, 0x0

    .line 247
    .local v3, obj:Ljava/lang/Object;
    move v2, v0

    .end local v3           #obj:Ljava/lang/Object;
    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 249
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v5, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    .line 251
    .local v3, obj:Lcom/htc/sunnyCore/IMediaData;
    if-nez v3, :cond_3

    .line 247
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    :cond_3
    instance-of v5, v3, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    if-eqz v5, :cond_2

    .line 256
    move v4, v2

    .line 257
    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onBindAdapter()V

    .line 144
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 158
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    return-void
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 11

    .prologue
    .line 87
    const-string v2, "SceneDlnaGridviewBase"

    const-string v3, "[HTCAlbum][SceneDlnaGridviewBase][onCreateScene]: ..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 90
    .local v6, activity:Landroid/app/Activity;
    if-nez v6, :cond_0

    .line 91
    const-string v2, "SceneDlnaGridviewBase"

    const-string v3, "Activity is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    .line 94
    :cond_0
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 96
    .local v7, context:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v9

    .line 97
    .local v9, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v8, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v8, v7, v2, v9}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 100
    .local v8, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    const/4 v1, 0x0

    .line 101
    .local v1, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v1, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v1           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, v7, v2, v8}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    .line 104
    .restart local v1       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x208003f

    const v3, 0x7f020037

    const v4, 0x208003e

    const v5, 0x7f020036

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;IIII)V

    .line 109
    .local v0, res:Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setHtcFastScrollerRes(Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V

    .line 111
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v10

    .line 112
    .local v10, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_1
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v2, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 116
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v7, v10}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V

    .line 117
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 118
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 120
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v8, v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 121
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 122
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 137
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onDestroyScene()V

    .line 138
    return-void
.end method

.method protected abstract onItemSelected(I)V
.end method

.method public onLeaveScene()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onLeaveScene()V

    .line 209
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 67
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onMessage(Landroid/os/Message;)Z

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 61
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onItemSelected(I)V

    .line 69
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_1

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x5079 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V

    .line 217
    :cond_0
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onSendToBackground(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V

    .line 152
    :cond_0
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onUnbindAdapter()V

    .line 204
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 205
    return-void
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    const/4 v1, 0x0

    .line 164
    .local v1, configuration:Landroid/content/res/Configuration;
    if-nez p1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .end local v2           #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 169
    .restart local v2       #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    :goto_0
    if-nez v2, :cond_1

    .line 196
    :goto_1
    return-void

    .line 167
    :cond_0
    move-object v2, p1

    goto :goto_0

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, activity:Landroid/app/Activity;
    if-nez p2, :cond_2

    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 178
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 181
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 176
    :cond_2
    move-object v1, p2

    goto :goto_2

    .line 185
    :cond_3
    const/4 v3, 0x2

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->requestFooterBar()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 193
    :goto_3
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 194
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 191
    :cond_4
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v4

    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_3
.end method
