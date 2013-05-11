.class public abstract Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;
.super Ljava/lang/Object;
.source "ISocialView.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MainView:",
        "Landroid/view/View;",
        "MainViewWrapper:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/album/modules/ui/IControlBarHost;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ISocialListView"


# instance fields
.field protected isMfFragment:Z

.field protected mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field protected mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mMainView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMainView;"
        }
    .end annotation
.end field

.field protected mMainViewWrapper:Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMainViewWrapper;"
        }
    .end annotation
.end field

.field protected mMfFragment:Lcom/htc/app/mf/MfFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 6
    .parameter "activity"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    .line 32
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    .line 33
    iput-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    .line 34
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 35
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    .line 36
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainViewWrapper:Landroid/view/ViewGroup;

    .line 37
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 38
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 84
    const-string v2, "ISocialListView"

    const-string v3, "[HTCAlbum][ISocialView][ISocialListView]:... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-boolean v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    .line 86
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 89
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->createMainView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->createMainViewWrapper()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainViewWrapper:Landroid/view/ViewGroup;

    .line 91
    iput-object p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mHandler:Landroid/os/Handler;

    .line 92
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->getMainViewContainerId()I

    move-result v0

    .line 93
    .local v0, nContainerId:I
    const/4 v1, 0x0

    .line 94
    .local v1, viewContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #viewContainer:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 96
    .restart local v1       #viewContainer:Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 98
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const-string v2, "ISocialListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ISocialView][ISocialView]: attachedTo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/htc/app/mf/MfFragment;Landroid/widget/BaseAdapter;Landroid/os/Handler;)V
    .locals 5
    .parameter "fragment"
    .parameter "adapterBase"
    .parameter "handler"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    .line 32
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    .line 33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    .line 34
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 35
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    .line 36
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainViewWrapper:Landroid/view/ViewGroup;

    .line 37
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 38
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 43
    const-string v2, "ISocialListView"

    const-string v3, "[HTCAlbum][ISocialView][ISocialListView]:... "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    .line 45
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    .line 46
    invoke-virtual {p1}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 48
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->createMainView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->createMainViewWrapper()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainViewWrapper:Landroid/view/ViewGroup;

    .line 50
    iput-object p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->getMainViewContainerId()I

    move-result v0

    .line 55
    .local v0, nContainerId:I
    const/4 v1, 0x0

    .line 56
    .local v1, viewContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 57
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v3}, Lcom/htc/app/mf/MfFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/app/mf/MfFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .end local v1           #viewContainer:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 59
    .restart local v1       #viewContainer:Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 61
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const-string v2, "ISocialListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ISocialView][ISocialView]: attachedTo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract bindAdapter()V
.end method

.method public abstract createMainView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMainView;"
        }
    .end annotation
.end method

.method public abstract createMainViewWrapper()Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMainViewWrapper;"
        }
    .end annotation
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 232
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 198
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMainView;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getMainViewContainerId()I
.end method

.method public abstract getMainViewWrapperContainerId()I
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 80
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 172
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    return-void
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 189
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 184
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 176
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
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
    .line 194
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 109
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const-string v0, "ISocialListView"

    const-string v1, "[HTCAlbum][ISocialView][onCreate]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->requestHeaderBar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    const-string v0, "ISocialListView"

    const-string v1, "[HTCAlbum][ISocialView][onCreate]: create ControlBar"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    invoke-virtual {v1}, Lcom/htc/app/mf/MfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->bindAdapter()V

    .line 126
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onEnter()V

    .line 127
    return-void

    .line 119
    :cond_2
    new-instance v0, Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 223
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v2, 0x0

    .line 140
    const-string v0, "ISocialListView"

    const-string v1, "[HTCAlbum][ISocialView][onDestroy]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->onLeave()V

    .line 142
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->unbindAdapter()V

    .line 143
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainView:Landroid/view/View;

    .line 144
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 145
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->isMfFragment:Z

    if-eqz v0, :cond_0

    .line 146
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMfFragment:Lcom/htc/app/mf/MfFragment;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onEnter()V
    .locals 2

    .prologue
    .line 155
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const-string v0, "ISocialListView"

    const-string v1, "[HTCAlbum][ISocialView][onEnter]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainViewWrapper:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mMainViewWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onLeave()V
    .locals 2

    .prologue
    .line 161
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const-string v0, "ISocialListView"

    const-string v1, "[HTCAlbum][ISocialView][onLeave]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 166
    :cond_0
    return-void
.end method

.method public onNotifyListComplete()V
    .locals 0

    .prologue
    .line 77
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 229
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->enableHTCLandscape(Z)V

    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 218
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 203
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V
    .locals 0
    .parameter "actionBar"

    .prologue
    .line 68
    .local p0, this:Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;,"Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView<TMainView;TMainViewWrapper;>;"
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 69
    return-void
.end method

.method public abstract setFastScrollEnabled(Z)V
.end method

.method public abstract unbindAdapter()V
.end method
