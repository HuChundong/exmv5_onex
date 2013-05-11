.class public Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;
.super Lcom/htc/app/mf/MfFragment;
.source "MfFragmentPaneDummy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/app/mf/MfFragment;-><init>()V

    return-void
.end method

.method private getPageLoadingLayout()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f030034

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/htc/app/mf/MfFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;->getPageLoadingLayout()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 24
    .local v1, mainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/MfFragmentPaneDummy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 25
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    return-object v1
.end method
