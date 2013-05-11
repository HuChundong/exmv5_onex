.class final Lcom/android/server/HtcPowerSaver$Switch2GCall;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Switch2GCall"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 1344
    const-string v2, "Switch2GCall"

    const-string v3, "powersaver_switch_2G_call"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.2gcall"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1345
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Switch2GCall;->mContext:Landroid/content/Context;

    .line 1346
    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 2

    .prologue
    .line 1356
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method protected restoreSystemSettings()I
    .locals 2

    .prologue
    .line 1362
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "restoreSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v0, 0x0

    return v0
.end method

.method protected saveSystemSettings()I
    .locals 2

    .prologue
    .line 1350
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v0, 0x0

    return v0
.end method
