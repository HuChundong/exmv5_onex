.class public Lcom/htc/videowidget/videoview/HtcPlayerHelper;
.super Ljava/lang/Object;
.source "HtcPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcPlayerHelper"


# instance fields
.field private listener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

.field private mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

.field private mNetworkHelper:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

.field private mNetworkListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    .line 32
    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkHelper:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    .line 90
    new-instance v0, Lcom/htc/videowidget/videoview/HtcPlayerHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcPlayerHelper$1;-><init>(Lcom/htc/videowidget/videoview/HtcPlayerHelper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;

    .line 36
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->listener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/HtcPlayerHelper;)Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->listener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

    return-object v0
.end method


# virtual methods
.method createHelper(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 40
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-direct {v0, p1}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    .line 42
    return-void
.end method

.method destoryHelper(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v0, "HtcPlayerHelper"

    const-string v1, "destoryHelper"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkHelper:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkHelper:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->stopMonitor(Landroid/content/Context;)V

    .line 83
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkHelper:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    .line 85
    :cond_0
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    .line 86
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->listener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

    .line 87
    return-void
.end method

.method showBrightnessDialog()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "HtcPlayerHelper"

    const-string v1, "startBrightnessHelper"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->showBrightnessDialog()V

    .line 76
    :cond_0
    return-void
.end method

.method startBrightnessHelper()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "HtcPlayerHelper"

    const-string v1, "startBrightnessHelper"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->init()V

    .line 63
    :cond_0
    return-void
.end method

.method startHelper(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "isStream"

    .prologue
    .line 45
    const-string v0, "HtcPlayerHelper"

    const-string v1, "startHelper"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkHelper:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    invoke-direct {v0}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkHelper:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    .line 49
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkHelper:Lcom/htc/videowidget/videoview/utilities/NetworkHelper;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mNetworkListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;

    invoke-virtual {v0, p1, v1}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->startMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;)V

    .line 52
    :cond_0
    return-void
.end method

.method stopBrightnessHelper()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "HtcPlayerHelper"

    const-string v1, "stopBrightnessHelper"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->mBrightnessHelper:Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/brightness/BrightnessHelper;->deInit()V

    .line 69
    :cond_0
    return-void
.end method

.method stopHelper(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 56
    const-string v0, "HtcPlayerHelper"

    const-string v1, "stopHelper"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
