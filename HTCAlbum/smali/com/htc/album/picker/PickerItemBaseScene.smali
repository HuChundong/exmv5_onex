.class public abstract Lcom/htc/album/picker/PickerItemBaseScene;
.super Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.source "PickerItemBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/picker/PickerItemBaseScene$1;,
        Lcom/htc/album/picker/PickerItemBaseScene$OnItemVibrateListener;
    }
.end annotation


# static fields
.field protected static final HEADER_PICKER:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static mIsTablet:Z


# instance fields
.field private mOnItemVibrateListener:Lcom/htc/album/picker/PickerItemBaseScene$OnItemVibrateListener;

.field protected mPickerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/album/picker/PickerItemBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/picker/PickerItemBaseScene;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    .line 40
    new-instance v0, Lcom/htc/album/picker/PickerItemBaseScene$OnItemVibrateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/picker/PickerItemBaseScene$OnItemVibrateListener;-><init>(Lcom/htc/album/picker/PickerItemBaseScene;Lcom/htc/album/picker/PickerItemBaseScene$1;)V

    iput-object v0, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mOnItemVibrateListener:Lcom/htc/album/picker/PickerItemBaseScene$OnItemVibrateListener;

    .line 42
    return-void
.end method

.method public static prepareSelectMenuItem(Landroid/view/Menu;II)Z
    .locals 6
    .parameter "menu"
    .parameter "maxPickCount"
    .parameter "currentPickCount"

    .prologue
    const v5, 0x20401f4

    const v4, 0x204014f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, prepare:Z
    if-eqz p0, :cond_4

    .line 227
    invoke-interface {p0, v3, v4, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 228
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 230
    :cond_0
    if-lt p2, p1, :cond_1

    .line 231
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 234
    :cond_1
    invoke-interface {p0, v3, v5, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 237
    :cond_2
    if-gtz p2, :cond_3

    .line 238
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 240
    :cond_3
    const/4 v1, 0x1

    .line 244
    .end local v0           #item:Landroid/view/MenuItem;
    :goto_0
    return v1

    .line 243
    :cond_4
    sget-object v2, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    const-string v3, "menu is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreSelection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 176
    const/4 v4, 0x0

    .line 177
    .local v4, initPos:I
    const v2, 0x7fffffff

    .line 179
    .local v2, firstPosY:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "external_picker"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 183
    .local v3, fromExternal:Z
    if-nez v3, :cond_2

    .line 185
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 186
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v6, "photo_position"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 187
    if-gez v4, :cond_0

    .line 188
    const/4 v4, 0x0

    .line 191
    :cond_0
    const-string v6, "first_positionY"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 203
    .end local v3           #fromExternal:Z
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(IZI)V

    .line 204
    return-void

    .line 195
    .restart local v3       #fromExternal:Z
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 196
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto :goto_0
.end method


# virtual methods
.method public actionBarMode()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 3
    .parameter "collection"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "picker_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    .line 61
    iget v0, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mPickerMode:I

    invoke-static {v0}, Lcom/htc/album/picker/PickerConstants;->getMediaType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/collection/Collection;->setSupportedMediaTypes(I)V

    .line 63
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    return-object v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getBottomMargin()I
.end method

.method protected getLeftPadding()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightPadding()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected getTabletTopPadding()I
    .locals 3

    .prologue
    .line 107
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v0

    .line 108
    .local v0, nTop:I
    return v0
.end method

.method protected getTopPadding()I
    .locals 5

    .prologue
    .line 113
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .line 116
    .local v1, nTop:I
    return v1
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onBindAdapter()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onBindAdapter()V

    .line 150
    invoke-direct {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->restoreSelection()V

    .line 151
    return-void
.end method

.method protected onCancel()V
    .locals 4

    .prologue
    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 271
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCancel] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 5

    .prologue
    .line 75
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    .line 76
    .local v0, gv:Lcom/htc/sunnyCore/widget/gridview/GridView;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    sput-boolean v2, Lcom/htc/album/picker/PickerItemBaseScene;->mIsTablet:Z

    .line 78
    if-nez v0, :cond_0

    .line 80
    sget-object v2, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[onCreateScene] gv is null"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    .line 85
    .local v1, nTop:I
    sget-boolean v2, Lcom/htc/album/picker/PickerItemBaseScene;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getTabletTopPadding()I

    move-result v1

    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getLeftPadding()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getRightPadding()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getBottomMargin()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 100
    iget-object v2, p0, Lcom/htc/album/picker/PickerItemBaseScene;->mOnItemVibrateListener:Lcom/htc/album/picker/PickerItemBaseScene$OnItemVibrateListener;

    invoke-virtual {v0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getTopPadding()I

    move-result v1

    goto :goto_1
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 139
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->createControlBar(II)V

    .line 140
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    sget-object v0, Lcom/htc/album/picker/PickerItemBaseScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unhandler menu item id."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 254
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->onCancel()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x20401ee
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->markSelection(II)V

    .line 161
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPause()V

    .line 162
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const v1, 0x20401ee

    const/4 v2, 0x1

    .line 209
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 210
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 211
    sget-boolean v0, Lcom/htc/album/picker/PickerItemBaseScene;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 217
    :cond_0
    return v2
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerItemBaseScene;->markSelection(II)V

    .line 172
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUnbindAdapter()V

    .line 173
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
