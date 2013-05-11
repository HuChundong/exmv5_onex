.class public abstract Lcom/htc/album/picker/PickerMultiItemBaseScene;
.super Lcom/htc/album/picker/PickerItemBaseScene;
.source "PickerMultiItemBaseScene.java"


# static fields
.field protected static final CMD_BAR_MULTIPICKER:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mIsSelectAll:Z

.field private mLocker:Ljava/lang/Object;

.field protected mPickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/album/picker/PickerItemBaseScene;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mLocker:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/picker/PickerMultiItemBaseScene;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method


# virtual methods
.method protected getBottomMargin()I
    .locals 2

    .prologue
    .line 269
    sget-boolean v1, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v1

    .line 274
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getConfirmText()Ljava/lang/String;
.end method

.method protected abstract getGridViewItemStyle()I
.end method

.method protected getSelectionCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final isItemPicked(I)Z
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBindAdapter()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/htc/album/picker/PickerItemBaseScene;->onBindAdapter()V

    .line 110
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->invalidateControlBars()V

    .line 111
    return-void
.end method

.method protected abstract onConfirm()V
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 248
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onConfirm()V

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onCancel()V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 135
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 136
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 137
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 138
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Next_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x2040265

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 141
    return-object v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerItemBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 99
    const/4 v0, 0x2

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->createControlBar(II)V

    .line 100
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->pickItem(I)V

    .line 188
    :cond_0
    return-void
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    .locals 3
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    .line 59
    .local v1, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getGridViewItemStyle()I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 61
    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    invoke-direct {v0, p1, p2, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 62
    .local v0, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    new-instance v2, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;

    invoke-direct {v2, p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene$1;-><init>(Lcom/htc/album/picker/PickerMultiItemBaseScene;)V

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 86
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerItemBaseScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 304
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 298
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->onConfirm()V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x204012c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 280
    invoke-super {p0, p1}, Lcom/htc/album/picker/PickerItemBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 282
    sget-boolean v2, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 283
    const v2, 0x204012c

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getConfirmText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Done_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    :cond_1
    return v1
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 4
    .parameter "footer"

    .prologue
    const/4 v1, 0x1

    .line 156
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 157
    .local v0, btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v2, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    if-eqz v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getConfirmText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getConfirmText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->getSelectionCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected final pickItem(I)V
    .locals 5
    .parameter "nIndex"

    .prologue
    const/4 v1, 0x0

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, selected:Z
    iget-object v2, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 196
    :goto_0
    if-eqz v0, :cond_0

    .line 197
    iget-object v3, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mPickerList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iput-boolean v1, p0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsSelectAll:Z

    .line 217
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange(I)V

    .line 218
    sget-boolean v1, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 227
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 195
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerMultiItemBaseScene;->invalidateControlBars()V

    goto :goto_1
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/htc/album/picker/PickerMultiItemBaseScene;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
