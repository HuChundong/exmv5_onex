.class public Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;
.super Ljava/lang/Object;
.source "PluginLoginViewManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/IPluginLoginViewHost;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PluginLoginViewManager"

.field private static final PLUGIN_LOGIN_VIEW:I = 0x2713


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

.field private mLoginButton:Lcom/htc/widget/HtcRimButton;

.field private mLoginDescription:Landroid/widget/TextView;

.field private mLoginView:Landroid/view/View;

.field private mRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    .line 22
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    .line 23
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginButton:Lcom/htc/widget/HtcRimButton;

    .line 24
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginDescription:Landroid/widget/TextView;

    .line 25
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mIsInitialized:Z

    .line 27
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mRoot:Landroid/view/ViewGroup;

    .line 31
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->initializeLoginBar()V

    .line 33
    return-void
.end method

.method private getLoginViewLayout()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f030031

    return v0
.end method

.method private initializeLoginBar()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][initialLoginBar] context is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/htc/album/SocialNetwork/LiveLoginBar;

    const/16 v1, 0x2713

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->getLoginViewLayout()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/LiveLoginBar;-><init>(ILandroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    .line 60
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    if-nez v0, :cond_1

    .line 62
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][initialLoginBar] LoginBar is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 70
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][initialLoginBar] LoginView is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getGlanceBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginButton:Lcom/htc/widget/HtcRimButton;

    .line 77
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginDescription:Landroid/widget/TextView;

    .line 79
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    if-nez v2, :cond_0

    .line 148
    const-string v2, "PluginLoginViewManager"

    const-string v3, "[HTCAlbum][PluginLoginViewManager][setLoginDescription] LoginBar is null..."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 153
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-object v1

    .line 152
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    move-object v1, v0

    .line 153
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0
.end method

.method public initializeLoginView(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][initializeLoginView] Root is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 167
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][initializeLoginView] Login View is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    if-nez p1, :cond_2

    .line 173
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][initializeLoginView] param is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mIsInitialized:Z

    goto :goto_0
.end method

.method public isLoginViewInitialized()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mIsInitialized:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginDescription:Landroid/widget/TextView;

    .line 85
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginButton:Lcom/htc/widget/HtcRimButton;

    .line 86
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginView:Landroid/view/View;

    .line 87
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mIsInitialized:Z

    .line 89
    return-void
.end method

.method public setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginButton:Lcom/htc/widget/HtcRimButton;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][setButtonOnClickListener] LoginButton is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setLoginButtonText(Ljava/lang/String;)V
    .locals 2
    .parameter "loginText"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginButton:Lcom/htc/widget/HtcRimButton;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][setLoginButtonText] LoginButton is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLoginDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "loginDescription"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginDescription:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][setLoginDescription] LoginDescription is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRootView(Landroid/widget/RelativeLayout;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 39
    const-string v0, "PluginLoginViewManager"

    const-string v1, "[HTCAlbum][PluginLoginViewManager][setRootView] root is null..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mRoot:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginLoginViewManager;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method
