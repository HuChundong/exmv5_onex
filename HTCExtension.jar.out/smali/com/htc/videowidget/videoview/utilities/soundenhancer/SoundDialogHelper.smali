.class public Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;
.super Ljava/lang/Object;
.source "SoundDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

.field mSoundEffectDialog:Landroid/app/Dialog;

.field private mTempEffect:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mTempEffect:I

    .line 28
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundEffectDialog:Landroid/app/Dialog;

    .line 29
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    .line 34
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mTempEffect:I

    return v0
.end method


# virtual methods
.method public dismissSoundDialog()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundEffectDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundEffectDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundEffectDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundEffectDialog:Landroid/app/Dialog;

    .line 53
    :cond_0
    return-void
.end method

.method public refleshDialogList(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
    .locals 1
    .parameter "currentEffect"
    .parameter "state"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->updateSoundEffectList(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    .line 44
    :cond_0
    return-void
.end method

.method public showSoundDialog(ILcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;Ljava/lang/String;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)Z
    .locals 5
    .parameter "currentEffect"
    .parameter "CB"
    .parameter "title"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEnhancerFactory;->createSoundEffectDialog(Landroid/content/Context;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    if-nez v2, :cond_2

    .line 124
    :cond_1
    :goto_0
    return v1

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    new-instance v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;

    invoke-direct {v3, p0, p4, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$1;-><init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;)V

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    new-instance v3, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$2;

    invoke-direct {v3, p0, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$2;-><init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;)V

    invoke-virtual {v2, v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 93
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2040151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$3;

    invoke-direct {v4, p0, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$3;-><init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2040152

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$4;

    invoke-direct {v4, p0, p2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$4;-><init>(Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mTempEffect:I

    .line 113
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundDialog:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;

    invoke-virtual {v2, p1, p3, p4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;->createSoundEffectDialog(ILjava/lang/String;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundEffectDialog:Landroid/app/Dialog;

    .line 115
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundEffectDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->mSoundEffectDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v1, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
