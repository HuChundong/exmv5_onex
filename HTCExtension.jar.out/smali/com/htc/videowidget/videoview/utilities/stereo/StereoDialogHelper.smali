.class public Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;
.super Ljava/lang/Object;
.source "StereoDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StereoDialogHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

.field private mStereoDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mStereoModeStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoModeStatus:I

    .line 39
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->createStereoDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoModeStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mediaplayer_setproperty_stereo2d(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V

    return-void
.end method

.method private createStereoDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 7

    .prologue
    .line 90
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    .local v1, res:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 93
    const-string v4, "StereoDialogHelper"

    const-string v5, "[onCreateView] res is null"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v4, 0x0

    .line 126
    :goto_0
    return-object v4

    .line 96
    :cond_0
    const v4, 0x6090008

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, title:Ljava/lang/String;
    const v4, 0x609000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, msg:Ljava/lang/String;
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040151

    new-instance v6, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;

    invoke-direct {v6, p0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$2;-><init>(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040152

    new-instance v6, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$1;

    invoke-direct {v6, p0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper$1;-><init>(Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 126
    .local v2, stereoDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    goto :goto_0
.end method

.method private mediaplayer_setproperty_stereo2d(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V
    .locals 3
    .parameter "player"

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "TAG_STEREO_MODE"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v1, "TAG_STEREO_MODE"

    invoke-interface {p1, v1, v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->setProperty(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 134
    return-void
.end method

.method private mediaplayer_setproperty_stereo3d(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V
    .locals 3
    .parameter "player"

    .prologue
    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "TAG_STEREO_MODE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v1, "TAG_STEREO_MODE"

    invoke-interface {p1, v1, v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->setProperty(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 141
    return-void
.end method


# virtual methods
.method public changeStereoVision(I)V
    .locals 2
    .parameter "menuId"

    .prologue
    const/4 v1, 0x2

    .line 64
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->pause()V

    .line 73
    :cond_2
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoModeStatus:I

    if-ne v0, v1, :cond_3

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/DisplayService;->setStereoDisplayMode(I)V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoModeStatus:I

    .line 78
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mediaplayer_setproperty_stereo3d(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V

    .line 80
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI;->play()V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 60
    :cond_0
    return-void
.end method

.method public setPlayer(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    .line 47
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->mStereoDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 53
    :cond_0
    return-void
.end method
