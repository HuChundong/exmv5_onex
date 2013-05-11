.class public Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;
.super Ljava/lang/Object;
.source "BrightnessHelper.java"


# instance fields
.field private final DEFAULT_BRIGHTNESS_VALUE:I

.field private final MSGID_TIMEOUT:I

.field private final NOT_INITIALIZE:I

.field private final TAG:Ljava/lang/String;

.field private final TIMEOUT_DELAY:I

.field private mActivity:Landroid/app/Activity;

.field private mAutomaticAvailable:Ljava/lang/Boolean;

.field private mBrightSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mKeepBright:I

.field private mOriginalBright:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/16 v1, -0x270f

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->MSGID_TIMEOUT:I

    .line 25
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->TIMEOUT_DELAY:I

    .line 26
    const/16 v0, 0x8e

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->DEFAULT_BRIGHTNESS_VALUE:I

    .line 27
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->NOT_INITIALIZE:I

    .line 29
    const-string v0, "BrightnessHelper"

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mOriginalBright:I

    .line 33
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    .line 163
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$1;-><init>(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper$2;-><init>(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 39
    const-string v0, "BrightnessHelper"

    const-string v1, "[Constructor]"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mActivity:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->setBrightness(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->resetTimeout()V

    return-void
.end method

.method private closeAutomatic()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    return-void
.end method

.method private getAutomaticProperty()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 100
    const/4 v1, 0x0

    .line 103
    .local v1, returnValue:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 109
    :goto_0
    const-string v2, "BrightnessHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAutomaticProperty], return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v1

    .line 103
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentScreenBrightnessValue()I
    .locals 7

    .prologue
    .line 125
    const/16 v3, 0x8e

    .line 128
    .local v3, value:I
    :try_start_0
    new-instance v2, Lcom/htc/wrap/android/os/HtcWrapIPowerManager;

    invoke-direct {v2}, Lcom/htc/wrap/android/os/HtcWrapIPowerManager;-><init>()V

    .line 129
    .local v2, ipw:Lcom/htc/wrap/android/os/HtcWrapIPowerManager;
    invoke-virtual {v2}, Lcom/htc/wrap/android/os/HtcWrapIPowerManager;->fetchCurrentBrightnessValue()I

    move-result v1

    .line 130
    .local v1, fetchValue:I
    if-nez v1, :cond_0

    .line 132
    const/16 v3, 0x8e

    .line 146
    :goto_0
    const-string v4, "BrightnessHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getCurrentScreenBrightnessValue], fetchValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1           #fetchValue:I
    .end local v2           #ipw:Lcom/htc/wrap/android/os/HtcWrapIPowerManager;
    :goto_1
    return v3

    .line 134
    .restart local v1       #fetchValue:I
    .restart local v2       #ipw:Lcom/htc/wrap/android/os/HtcWrapIPowerManager;
    :cond_0
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_1

    .line 136
    const/16 v3, 0x1e

    goto :goto_0

    .line 138
    :cond_1
    const/16 v4, 0xff

    if-le v1, v4, :cond_2

    .line 140
    const/16 v3, 0xff

    goto :goto_0

    .line 144
    :cond_2
    move v3, v1

    goto :goto_0

    .line 148
    .end local v1           #fetchValue:I
    .end local v2           #ipw:Lcom/htc/wrap/android/os/HtcWrapIPowerManager;
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getSystemBrightnessProperty()I
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, property:I
    const-string v1, "BrightnessHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSystemBrightnessProperty], return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return v0
.end method

.method private openAutomatic()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    return-void
.end method

.method private removeDialogBackground(Lcom/htc/widget/HtcMultiSeekBarDialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 242
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 243
    .local v1, windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 246
    .end local v0           #window:Landroid/view/Window;
    .end local v1           #windowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 159
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    return-void
.end method

.method private setBrightness(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 92
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 93
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    int-to-float v2, p1

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 94
    const-string v2, "BrightnessHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setBrightness], set:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = screenBrightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 96
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 3

    .prologue
    .line 68
    const-string v0, "BrightnessHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deInit], mOriginalBright = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mOriginalBright:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->dismissBrightnessDialog()V

    .line 72
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mAutomaticAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->openAutomatic()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mOriginalBright:I

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->setBrightness(I)V

    goto :goto_0
.end method

.method public dismissBrightnessDialog()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->dismiss()V

    .line 207
    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/16 v3, -0x270f

    .line 46
    const-string v0, "BrightnessHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[init], mKeepBright = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->getAutomaticProperty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mAutomaticAvailable:Ljava/lang/Boolean;

    .line 49
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mAutomaticAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    if-ne v0, v3, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->getCurrentScreenBrightnessValue()I

    move-result v0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    .line 53
    :cond_0
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mOriginalBright:I

    .line 54
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->closeAutomatic()V

    .line 62
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->setBrightness(I)V

    .line 63
    return-void

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->getSystemBrightnessProperty()I

    move-result v0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mOriginalBright:I

    .line 59
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    if-ne v0, v3, :cond_1

    .line 60
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mOriginalBright:I

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    goto :goto_0
.end method

.method public showBrightnessDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, iBrightIconID:I
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    .line 182
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->addNewSuite()V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->resetTimeout()V

    .line 185
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/16 v2, 0x8

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setSuiteVisibilty(II)V

    .line 186
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x2040323

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setTextViewText(ILjava/lang/String;)V

    .line 187
    const v0, 0x6020012

    .line 188
    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v1, v4, v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewResource(II)V

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/brightness/HtcBrightnessMappingScheme;->getProgressBarMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 193
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mKeepBright:I

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/brightness/HtcBrightnessMappingScheme;->encodeBrightness(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 194
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightSeekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setSeekbarSeekListener(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 195
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->showByGravity(I)V

    .line 197
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mBrightnessDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->removeDialogBackground(Lcom/htc/widget/HtcMultiSeekBarDialog;)V

    .line 198
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 199
    return-void
.end method
