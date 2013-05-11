.class public abstract Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlinePickerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunnyCore/widget/gridview/GridView;",
        "TADAPTER;>;"
    }
.end annotation


# static fields
.field public static final FOOTERBAR_PICKER_ID:I = 0x1389

.field public static final HEADERBAR_PICKER_ID:I = 0x138a

.field public static final PICKER_MODE_DELETE:I = 0x1

.field public static final PICKER_MODE_MULTI:I = 0x2

.field public static final PICKER_MODE_NONE:I = 0x0

.field public static final PICKER_MODE_UPLOAD:I = 0x3


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field protected mHideMaxCount:Z

.field protected mIsDeleteAnimation:Z

.field protected mIsSelectAll:Z

.field private mItemDataBindListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase",
            "<TADAPTER;>.ItemDataBind",
            "Listener;"
        }
    .end annotation
.end field

.field protected mMaxPickCount:I

.field protected mNoPhotoListAndCache:Z

.field protected mPickList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPickerMode:I

.field protected mProgressLoad:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 56
    const-string v0, "SceneOnlinePickerBase"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->LOG_TAG:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 66
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mItemDataBindListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;

    .line 68
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    .line 72
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsDeleteAnimation:Z

    .line 73
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 74
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsSelectAll:Z

    .line 75
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    .line 79
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    .line 607
    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    return-void
.end method

.method private onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 381
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/16 v0, 0x4f4f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 382
    return-void
.end method

.method private onSynchronizeScreenRotate()V
    .locals 2

    .prologue
    .line 416
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 419
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->configLayoutMainView(Landroid/content/res/Configuration;)Z

    .line 420
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onHandleActionBarBarLayoutChange()V

    .line 421
    return-void
.end method

.method private selectAll(Z)V
    .locals 4
    .parameter "bSelected"

    .prologue
    .line 590
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    if-nez p1, :cond_1

    .line 591
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    .line 605
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->invalidateControlBars()V

    .line 606
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v1

    .local v1, size:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 597
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 600
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v0, 0x0

    .line 235
    .local v0, szTitle:Ljava/lang/String;
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    packed-switch v2, :pswitch_data_0

    move-object v1, v0

    .line 252
    .end local v0           #szTitle:Ljava/lang/String;
    .local v1, szTitle:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 239
    .end local v1           #szTitle:Ljava/lang/String;
    .restart local v0       #szTitle:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->getSelectedCountTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 252
    .end local v0           #szTitle:Ljava/lang/String;
    .restart local v1       #szTitle:Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v1           #szTitle:Ljava/lang/String;
    .restart local v0       #szTitle:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_1

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getPickerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPickerMode()I
    .locals 1

    .prologue
    .line 202
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    return v0
.end method

.method public getSelectedCountTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const-string v1, ""

    .line 265
    .local v1, szCountTitle:Ljava/lang/String;
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 270
    .local v0, nCount:I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    .end local v0           #nCount:I
    :cond_0
    return-object v1
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v0, 0x0

    .line 579
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v1, :cond_0

    .line 581
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->setPickerMode(I)V

    .line 582
    const/4 v0, 0x1

    .line 585
    :cond_0
    return v0
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    .line 376
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 377
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 378
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 649
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 651
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 307
    :pswitch_0
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 308
    .local v0, mode:I
    const/16 v1, 0x4e42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 312
    .end local v0           #mode:I
    :pswitch_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 313
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onBackPressed()Z

    goto :goto_0

    .line 303
    nop

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
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v2, 0x0

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    const/16 v3, 0x1389

    if-ne p1, v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 290
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->enableRightFooter()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 291
    const/4 v3, 0x5

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x20401ee

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 292
    const/4 v3, 0x4

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Save_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0001

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 295
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 13

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v12, 0x0

    .line 321
    const-string v2, "SceneOnlinePickerBase"

    const-string v3, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateScene]: ..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 324
    .local v6, activity:Landroid/app/Activity;
    if-nez v6, :cond_0

    move-object v1, v12

    .line 364
    :goto_0
    return-object v1

    .line 327
    :cond_0
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 329
    .local v8, context:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v10

    .line 330
    .local v10, param:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    new-instance v9, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v9, v8, v2, v10}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 333
    .local v9, item:Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mItemDataBindListener:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;

    invoke-virtual {v9, v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setBindMediaDataListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;)V

    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v1, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v1           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v2

    invoke-direct {v1, v8, v2, v9}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V

    .line 339
    .restart local v1       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x208003f

    const v3, 0x7f020037

    const v4, 0x208003e

    const v5, 0x7f020036

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;IIII)V

    .line 344
    .local v0, res:Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setHtcFastScrollerRes(Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;)V

    .line 346
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->spawn()Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;

    move-result-object v11

    .line 347
    .local v11, params:Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v7, bundle:Landroid/os/Bundle;
    const-string v2, "BUNDLE_DISABLE_LOAD_FROM_EXIF"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    invoke-virtual {v11, v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsPreparator;->setExtra(Landroid/os/Bundle;)V

    .line 357
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v2, v8}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 358
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v12, v11}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Lcom/htc/sunnyCore/IParamsPreparator;)V

    .line 359
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 361
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setContentGetter(Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;)V

    .line 362
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunnyCore/widget/gridview/GridViewPreparator;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 1

    .prologue
    .line 368
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 372
    :cond_0
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyScene()V

    .line 373
    return-void
.end method

.method protected abstract onGetNormalFooterId()I
.end method

.method protected abstract onGetNormalHeaderId()I
.end method

.method protected onItemSelected(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 476
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->togglePickedIndex(I)Z

    .line 479
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataInvalidate(I)V

    .line 480
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 484
    :goto_0
    const/4 v0, 0x1

    .line 487
    :goto_1
    return v0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->invalidateControlBars()V

    goto :goto_0

    .line 487
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 400
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 409
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onMessage(Landroid/os/Message;)Z

    .line 412
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 403
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onItemSelected(I)Z

    .line 404
    const/4 v0, 0x1

    goto :goto_1

    .line 406
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSynchronizeScreenRotate()V

    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x4ea6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/16 v4, 0x4e42

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 548
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v2, :cond_0

    .line 549
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 573
    :goto_0
    return v1

    .line 551
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 572
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0

    .line 554
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    .line 555
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 558
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    goto :goto_1

    .line 561
    :sswitch_2
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->selectAll(Z)V

    goto :goto_1

    .line 564
    :sswitch_3
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 565
    .local v0, mode:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v4, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 568
    .end local v0           #mode:I
    :sswitch_4
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 569
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->setPickerMode(I)V

    goto :goto_1

    .line 551
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x204014f -> :sswitch_1
        0x20401ec -> :sswitch_0
        0x20401f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v2, 0x1

    .line 493
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 495
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 497
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v3, :cond_1

    .line 498
    const/4 v2, 0x0

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 500
    :cond_1
    const/4 v3, 0x2

    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v3, v4, :cond_3

    .line 502
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v1

    .line 503
    .local v1, total:I
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 506
    .local v0, pickCount:I
    invoke-static {p1, v1, v0}, Lcom/htc/album/picker/PickerItemBaseScene;->prepareSelectMenuItem(Landroid/view/Menu;II)Z

    .line 509
    .end local v0           #pickCount:I
    .end local v1           #total:I
    :cond_3
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPrepareTabletPickerOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onPrepareTabletPickerOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 519
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v6, :cond_0

    .line 544
    :goto_0
    return-void

    .line 522
    :cond_0
    const/4 v5, 0x0

    .line 523
    .local v5, textConfirm:I
    const/4 v4, 0x0

    .line 524
    .local v4, resConfirm:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 526
    .local v1, context:Landroid/content/Context;
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 528
    const v5, 0x2040214

    .line 529
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    .line 537
    :goto_1
    const/4 v6, 0x5

    const v7, 0x20401ee

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 538
    .local v2, itemCancel:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 539
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 541
    const/4 v6, 0x4

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 542
    .local v3, itemConfirm:Landroid/view/MenuItem;
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 543
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 533
    .end local v2           #itemCancel:Landroid/view/MenuItem;
    .end local v3           #itemConfirm:Landroid/view/MenuItem;
    :cond_1
    const v5, 0x204012c

    .line 534
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Done_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    goto :goto_1
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 9
    .parameter "footer"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 425
    iget v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v7, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 429
    .local v1, context:Landroid/content/Context;
    const-string v4, ""

    .line 430
    .local v4, text:Ljava/lang/String;
    const/4 v3, 0x0

    .line 431
    .local v3, iconRes:I
    iget v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v7, v5, :cond_2

    .line 433
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2040214

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 434
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    .line 442
    :goto_1
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 443
    .local v0, btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v0, :cond_0

    .line 450
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsSelectAll:Z

    if-eqz v7, :cond_3

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v7}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 471
    :goto_2
    invoke-virtual {v0, v3}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageResource(I)V

    goto :goto_0

    .line 438
    .end local v0           #btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x204012c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Next_Dark_Rest(Landroid/content/Context;)I

    move-result v3

    goto :goto_1

    .line 456
    .restart local v0       #btnConfirm:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_3
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    if-nez v7, :cond_5

    iget v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 458
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 459
    .local v2, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 460
    if-lez v2, :cond_4

    .line 461
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_2

    .line 463
    :cond_4
    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto :goto_2

    .line 467
    .end local v2           #count:I
    :cond_5
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 468
    .restart local v2       #count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 469
    if-lez v2, :cond_6

    :goto_3
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_6
    move v5, v6

    goto :goto_3
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 654
    const/4 v3, 0x0

    .line 655
    .local v3, mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    const/4 v1, 0x0

    .line 657
    .local v1, configuration:Landroid/content/res/Configuration;
    if-nez p1, :cond_1

    .line 658
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .end local v3           #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 662
    .restart local v3       #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    :goto_0
    if-nez v3, :cond_2

    .line 731
    :cond_0
    :goto_1
    return-void

    .line 660
    :cond_1
    move-object v3, p1

    goto :goto_0

    .line 665
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_0

    .line 668
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 669
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 672
    if-nez p2, :cond_3

    .line 673
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 677
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 679
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 680
    invoke-static {v9}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto :goto_1

    .line 675
    :cond_3
    move-object v1, p2

    goto :goto_2

    .line 684
    :cond_4
    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-nez v6, :cond_5

    .line 686
    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->inflaterPageLayout(Landroid/app/Activity;)V

    .line 689
    :cond_5
    const/4 v5, 0x0

    .line 690
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_6

    .line 692
    iget-object v6, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v7, 0x7f09005f

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 693
    .local v4, page_bk:Landroid/widget/RelativeLayout;
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 696
    .end local v4           #page_bk:Landroid/widget/RelativeLayout;
    .restart local v5       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    .line 697
    .local v2, iFooterPadding:I
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->requestFooterBar()Z

    move-result v7

    if-ne v6, v7, :cond_8

    .line 699
    const/4 v6, 0x2

    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_9

    .line 701
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-nez v6, :cond_7

    .line 703
    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v3, v6, v7, v2, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 705
    const/4 v2, 0x0

    .line 707
    :cond_7
    if-eqz v5, :cond_8

    .line 709
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 710
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 728
    :cond_8
    :goto_3
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 729
    invoke-static {v9}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    goto/16 :goto_1

    .line 715
    :cond_9
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-nez v6, :cond_a

    .line 717
    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v3, v6, v7, v8, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 719
    const/4 v2, 0x0

    .line 721
    :cond_a
    if-eqz v5, :cond_8

    .line 723
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 724
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3
.end method

.method public setPickerMode(I)V
    .locals 11
    .parameter "mode"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v10, 0x0

    const/16 v9, 0x1389

    const v8, 0x7f07002b

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 83
    iget v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v5, p1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 84
    :cond_0
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    .line 86
    const/4 v4, 0x0

    .line 87
    .local v4, nTop:I
    const/4 v3, 0x0

    .line 88
    .local v3, nBottom:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 90
    .local v1, context:Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 189
    :cond_1
    :goto_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5, v10, v4, v10, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 197
    :goto_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataInvalidate()V

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    .line 103
    :cond_2
    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v4, v5, v6

    .line 107
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    .line 109
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onGetNormalFooterId()I

    move-result v2

    .line 110
    .local v2, footbarId:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    invoke-virtual {p0, v7, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    goto :goto_1

    .line 119
    .end local v2           #footbarId:I
    :pswitch_1
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 121
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    .line 129
    :cond_3
    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v4, v5, v6

    .line 133
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    .line 135
    invoke-virtual {p0, v7, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    goto :goto_1

    .line 143
    :pswitch_2
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    .line 153
    :cond_4
    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v4, v5, v6

    .line 157
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    .line 159
    invoke-virtual {p0, v7, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    goto/16 :goto_1

    .line 165
    :pswitch_3
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 167
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 169
    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v4

    goto/16 :goto_1

    .line 175
    :cond_5
    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v4, v5, v6

    .line 179
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    .line 181
    invoke-virtual {p0, v7, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->createControlBar(II)V

    goto/16 :goto_1

    .line 195
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    goto/16 :goto_2

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public togglePickedIndex(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>;"
    const/4 v1, 0x1

    .line 212
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 216
    .local v0, count:I
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 224
    .end local v0           #count:I
    :goto_0
    return v1

    .line 220
    .restart local v0       #count:I
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v0           #count:I
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    const/4 v1, 0x0

    goto :goto_0
.end method
