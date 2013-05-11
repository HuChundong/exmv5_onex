.class public Lcom/htc/album/helper/ErrorViewManager;
.super Landroid/widget/RelativeLayout;
.source "ErrorViewManager.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenControlHook;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ErrorViewManager"


# instance fields
.field private mErrorText:Landroid/widget/TextView;

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 26
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    .line 27
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 26
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    .line 27
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 26
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    .line 27
    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 43
    return-void
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewGroup"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {p0}, Lcom/htc/album/helper/ErrorViewManager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ErrorViewManager;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/album/helper/ErrorViewManager;->initialize(Landroid/app/Activity;Z)V

    .line 47
    return-void
.end method

.method public initialize(Landroid/app/Activity;Z)V
    .locals 4
    .parameter "activity"
    .parameter "carMode"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 51
    const-class v1, Lcom/htc/album/helper/ErrorViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/helper/ErrorViewManager;->setId(I)V

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    .line 56
    const v1, 0x7f030035

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 63
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 67
    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->CARMODE_ACTION_BAR_HEIGHT_DIMEN:I

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 72
    :cond_0
    const-string v1, "ErrorViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ErrorViewManager][initialize]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/album/helper/ErrorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/helper/ErrorViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void

    .line 60
    :cond_1
    const v1, 0x7f030003

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 79
    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    .line 80
    iput-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method public setErrorText(I)V
    .locals 1
    .parameter "nResID"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public setPageLoadingPadding(I)V
    .locals 2
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/htc/album/helper/ErrorViewManager;->mMainView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 114
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/ErrorViewManager;->setVisibility(I)V

    .line 102
    return-void
.end method
