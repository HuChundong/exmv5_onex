.class final Lcom/android/server/HtcPowerSaver$Brightness;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Brightness"
.end annotation


# instance fields
.field private final DEFAULT_BRIGHTNESS_AUTO:I

.field private final DEFAULT_BRIGHTNESS_VALUE:I

.field private final DEFAULT_N_BRIGHTNESS:I

.field private final DEFAULT_N_BRIGHTNESS_AUTO:I

.field private final KEY_N_BRIGHTNESS:Ljava/lang/String;

.field private final KEY_N_BRIGHTNESS_AUTO:Ljava/lang/String;

.field private final KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String;

.field private final KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "ctx"

    .prologue
    const/16 v7, 0x66

    const/4 v6, 0x0

    .line 729
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Brightness;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 730
    const-string v2, "Brightness"

    const-string v3, "powersaver_screen_brightness"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.bright"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 717
    const-string v0, "powersaver_screen_brightness_settings_auto"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Brightness;->KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String;

    .line 718
    const-string v0, "powersaver_screen_brightness_settings"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Brightness;->KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String;

    .line 719
    iput v6, p0, Lcom/android/server/HtcPowerSaver$Brightness;->DEFAULT_BRIGHTNESS_AUTO:I

    .line 720
    iput v7, p0, Lcom/android/server/HtcPowerSaver$Brightness;->DEFAULT_BRIGHTNESS_VALUE:I

    .line 722
    const-string v0, "psaver_normal_brightness"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Brightness;->KEY_N_BRIGHTNESS:Ljava/lang/String;

    .line 723
    const-string v0, "psaver_normal_autobrightness"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Brightness;->KEY_N_BRIGHTNESS_AUTO:Ljava/lang/String;

    .line 724
    iput v7, p0, Lcom/android/server/HtcPowerSaver$Brightness;->DEFAULT_N_BRIGHTNESS:I

    .line 725
    iput v6, p0, Lcom/android/server/HtcPowerSaver$Brightness;->DEFAULT_N_BRIGHTNESS_AUTO:I

    .line 731
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Brightness;->mContext:Landroid/content/Context;

    .line 732
    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    .prologue
    .line 811
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 2

    .prologue
    .line 831
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v0, 0x0

    return v0
.end method

.method protected saveSystemSettings()I
    .locals 2

    .prologue
    .line 763
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x0

    return v0
.end method
