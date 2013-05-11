.class public abstract Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.super Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.source "LocalThumbnailBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/CollectionBaseScene",
        "<",
        "Lcom/htc/sunnyCore/widget/gridview/GridView;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LocalThumbnailBaseScene"


# instance fields
.field protected mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    .line 46
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    .line 54
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    return-void
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 73
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 103
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    .local v0, scrollState:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    if-ne v1, v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method protected getParamsPreparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v0

    return-object v0
.end method

.method protected markSelection(II)V
    .locals 4
    .parameter "index"
    .parameter "posY"

    .prologue
    .line 226
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    move v2, p1

    .line 231
    .local v2, pos:I
    if-gez v2, :cond_3

    .line 232
    const/4 v2, 0x0

    .line 236
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 237
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 239
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 240
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "photo_position"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v3, "first_positionY"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 233
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 234
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 270
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->notifyDataSetChanged()V

    .line 272
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 273
    .local v1, view:Lcom/htc/sunnyCore/widget/gridview/GridView;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 274
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 286
    return-void
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onBindAdapter()V

    .line 169
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 170
    return-void
.end method

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 348
    const-string v0, "LocalThumbnailBaseScene"

    const-string v1, "[HTCAlbum][LocalThumbnailBaseScene][onBroadcastMediaScanFinished]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 341
    const-string v0, "LocalThumbnailBaseScene"

    const-string v1, "[HTCAlbum][LocalThumbnailBaseScene][onBroadcastMediaScanStarted]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 200
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getNumColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->setSectionCollumnNumber(I)V

    .line 201
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    return-void
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 7

    .prologue
    .line 121
    const-string v5, "LocalThumbnailBaseScene"

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateScene]: ..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 124
    const-string v5, "LocalThumbnailBaseScene"

    const-string v6, "Activity is null"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x0

    .line 156
    :goto_0
    return-object v2

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    move-result-object v3

    .line 131
    .local v3, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    const/4 v2, 0x0

    .line 132
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v2           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v5

    invoke-direct {v2, v1, v5, v3}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    .line 142
    .restart local v2       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->getParamsPreparator()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v4

    .line 143
    .local v4, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->enableFileCache()V

    .line 145
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->SetCacheCountClient(Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;)V

    .line 146
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->setCacheSet(I)V

    .line 148
    new-instance v5, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v5, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 149
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v1, v4}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V

    .line 150
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 151
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 153
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 154
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    .line 155
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 163
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDestroyScene()V

    .line 164
    return-void
.end method

.method protected onItemClickIRT(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 3
    .parameter "view"
    .parameter "index"

    .prologue
    .line 65
    const/16 v0, 0x139c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 66
    return-void
.end method

.method protected abstract onItemSelected(I)V
.end method

.method public onLeaveScene()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onLeaveScene()V

    .line 188
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 90
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onMessage(Landroid/os/Message;)Z

    .line 92
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 81
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemSelected(I)V

    goto :goto_0

    .line 84
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_0

    .line 87
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x4f4f -> :sswitch_2
        0x5079 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 260
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v0

    .line 261
    .local v0, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v1, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    invoke-direct {v1, p1, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V

    .line 220
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onResume()V

    .line 208
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->resumePreparator(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 175
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V

    .line 178
    :cond_0
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onUnbindAdapter()V

    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 183
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 184
    return-void
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x0

    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    const/4 v0, 0x0

    .line 292
    .local v0, configuration:Landroid/content/res/Configuration;
    if-nez p1, :cond_0

    .line 293
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .end local v2           #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 297
    .restart local v2       #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    :goto_0
    if-nez v2, :cond_1

    .line 336
    :goto_1
    return-void

    .line 295
    :cond_0
    move-object v2, p1

    goto :goto_0

    .line 300
    :cond_1
    if-nez p2, :cond_2

    .line 301
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 305
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 307
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 308
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 303
    :cond_2
    move-object v0, p2

    goto :goto_2

    .line 312
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    .line 314
    .local v3, paddingBottom:I
    const/4 v5, 0x2

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_5

    .line 316
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->requestFooterBar()Z

    move-result v1

    .line 317
    .local v1, isNeedFooter:Z
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingRight()I

    move-result v4

    .line 318
    .local v4, paddingRight:I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    .line 319
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    .line 320
    const/4 v3, 0x0

    .line 327
    :goto_3
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2, v5, v6, v4, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 333
    .end local v1           #isNeedFooter:Z
    .end local v4           #paddingRight:I
    :goto_4
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 334
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 323
    .restart local v1       #isNeedFooter:Z
    .restart local v4       #paddingRight:I
    :cond_4
    const/4 v4, 0x0

    .line 324
    const/4 v3, 0x0

    goto :goto_3

    .line 331
    .end local v1           #isNeedFooter:Z
    .end local v4           #paddingRight:I
    :cond_5
    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_4
.end method
