.class public Lcom/htc/album/AlbumMain/MainActivityBase;
.super Landroid/app/Activity;
.source "MainActivityBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MainActivityBase"


# instance fields
.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mActionBarBackkeyListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 123
    new-instance v0, Lcom/htc/album/AlbumMain/MainActivityBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/AlbumMain/MainActivityBase$1;-><init>(Lcom/htc/album/AlbumMain/MainActivityBase;)V

    iput-object v0, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected enableSourceContentPadding(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 144
    return-void
.end method

.method protected getTrimMemoryLevel()I
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x3c

    return v0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 90
    :goto_0
    return-object v1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 83
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstance"

    .prologue
    .line 29
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/album/AlbumMain/MainActivityBase;->requestWindowFeature(I)Z

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 32
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method protected onHandleActionBarBarLayoutChange()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 152
    .local v0, nOrientation:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 36
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 37
    iget-object v2, p0, Lcom/htc/album/AlbumMain/MainActivityBase;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->enableActionBarUpdate()Z

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onEnableActionBarBackButton()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onEnableActionBarAppButton()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onUpdateActionBarTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->onUpdateActionBarSecondaryTitle()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v8}, Lcom/htc/sunny2/common/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MainActivityBase;->getTrimMemoryLevel()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/htc/album/helper/MemoryHelper;->doTrimMemory(Landroid/app/Activity;II)V

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 166
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    return-object v0
.end method
