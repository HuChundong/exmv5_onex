.class public Lcom/htc/album/addons/ViewerScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.source "ViewerScene.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field private mViewWebPhoto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/album/addons/ViewerScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/ViewerScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/ViewerScene;->mViewWebPhoto:Z

    return-void
.end method

.method private onSyncPhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 216
    iget-boolean v2, p0, Lcom/htc/album/addons/ViewerScene;->mViewWebPhoto:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .line 219
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    if-eqz v1, :cond_0

    .line 221
    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    .line 222
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setDataPath(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->resetFileCorrupted()V

    .line 227
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isFileCachable()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 206
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/ViewerScene;->onSyncPhoto()V

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x4e89
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 198
    :goto_0
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 186
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/addons/ViewerScene;->onDetails()V

    goto :goto_0

    .line 189
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/addons/ViewerScene;->onProtectionInfo()V

    goto :goto_0

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008f -> :sswitch_2
        0x7f090090 -> :sswitch_1
        0x7f0a0117 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const v13, 0x7f090090

    const v12, 0x2040216

    const/16 v11, 0x24

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 124
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 179
    :goto_0
    return v6

    .line 127
    :cond_0
    iget-boolean v6, p0, Lcom/htc/album/addons/ViewerScene;->mViewWebPhoto:Z

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 131
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_3

    .line 133
    :cond_2
    sget-object v6, Lcom/htc/album/addons/ViewerScene;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HtcAlbum][ViewerScene][onPrepareOptionsMenu]can\'t get context"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v8

    .line 134
    goto :goto_0

    .line 137
    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v5

    .line 140
    .local v5, position:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 141
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_4

    move v6, v8

    goto :goto_0

    .line 143
    :cond_4
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_0

    .line 145
    :cond_5
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v6, :cond_6

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, iconId:I
    const/4 v4, 0x0

    .line 150
    .local v4, menuItem:Landroid/view/MenuItem;
    iget v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v6, :cond_7

    .line 152
    const v6, 0x7f0a0117

    const v9, 0x7f0a0117

    invoke-interface {p1, v8, v6, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 153
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    .line 161
    :goto_1
    if-eqz v4, :cond_6

    .line 162
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 163
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 167
    .end local v1           #iconId:I
    .end local v4           #menuItem:Landroid/view/MenuItem;
    :cond_6
    const-string v6, "video/x-wmv-drm"

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 168
    .local v3, isWMDrm:Z
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v3, :cond_8

    .line 169
    const v6, 0x7f09008f

    const/16 v9, 0x23

    const v10, 0x2040212

    invoke-interface {p1, v8, v6, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 170
    .restart local v4       #menuItem:Landroid/view/MenuItem;
    invoke-interface {p1, v8, v13, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :goto_2
    move v6, v7

    .line 179
    goto/16 :goto_0

    .line 157
    .end local v3           #isWMDrm:Z
    .restart local v1       #iconId:I
    :cond_7
    const v6, 0x7f0a0116

    const v9, 0x7f0a0116

    invoke-interface {p1, v8, v6, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 158
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    goto :goto_1

    .line 174
    .end local v1           #iconId:I
    .end local v4           #menuItem:Landroid/view/MenuItem;
    .restart local v3       #isWMDrm:Z
    :cond_8
    invoke-interface {p1, v8, v13, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 175
    .restart local v4       #menuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Info_Dark_Rest(Landroid/content/Context;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 176
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 8
    .parameter "footer"

    .prologue
    const/4 v7, 0x0

    .line 259
    sget-object v5, Lcom/htc/album/addons/ViewerScene;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar] + "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 262
    :cond_0
    sget-object v5, Lcom/htc/album/addons/ViewerScene;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar]can\'t get context"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 268
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 270
    sget-object v5, Lcom/htc/album/addons/ViewerScene;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HtcAlbum][SceneLocalPhotoFullScreen][onRefreshFooterBar]can\'t get image"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 276
    const-string v5, "video/x-wmv-drm"

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 277
    .local v4, isWMDrm:Z
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    const/4 v3, 0x1

    .line 279
    .local v3, isDRM:Z
    :goto_1
    if-eqz v3, :cond_4

    .line 281
    const/16 v5, 0xc

    invoke-virtual {p1, v0, v7, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v5

    check-cast v5, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 284
    :cond_4
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v5, :cond_5

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 286
    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSWButtonState:I

    if-nez v5, :cond_7

    .line 288
    const/16 v5, 0x2c

    invoke-virtual {p1, v0, v7, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v5

    check-cast v5, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 298
    :cond_5
    :goto_2
    const/16 v5, 0xb

    invoke-virtual {p1, v0, v7, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 299
    .local v1, detailBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    goto :goto_0

    .end local v1           #detailBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v3           #isDRM:Z
    :cond_6
    move v3, v7

    .line 277
    goto :goto_1

    .line 293
    .restart local v3       #isDRM:Z
    :cond_7
    const/16 v5, 0x2d

    invoke-virtual {p1, v0, v7, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v5

    check-cast v5, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_2
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSendToForeground(Landroid/os/Bundle;)V

    .line 98
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/addons/SingleCollection;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .line 103
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 104
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 105
    .local v1, scheme:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/addons/ViewerScene;->mViewWebPhoto:Z

    .line 110
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 111
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 112
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onCreate()V

    .line 113
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/addons/ViewerScene;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 118
    .end local v0           #img:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method protected onSetAs()V
    .locals 5

    .prologue
    .line 242
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 243
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;

    .line 244
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, ""

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/album/addons/ViewerScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method
