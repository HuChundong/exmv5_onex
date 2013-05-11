.class public Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;
.super Ljava/lang/Object;
.source "HtcWrapPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/os/HtcWrapPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcCpuCtrlWrap"
.end annotation


# instance fields
.field private mHtcCpuCtrl:Landroid/os/PowerManager$HtcCpuCtrl;

.field final synthetic this$0:Lcom/htc/wrap/android/os/HtcWrapPowerManager;


# direct methods
.method private constructor <init>(Lcom/htc/wrap/android/os/HtcWrapPowerManager;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->this$0:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->mHtcCpuCtrl:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/htc/wrap/android/os/HtcWrapPowerManager;Landroid/os/PowerManager$HtcCpuCtrl;)V
    .locals 1
    .parameter
    .parameter "htcCpuCtrl"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->this$0:Lcom/htc/wrap/android/os/HtcWrapPowerManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->mHtcCpuCtrl:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 61
    iput-object p2, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->mHtcCpuCtrl:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/wrap/android/os/HtcWrapPowerManager;Landroid/os/PowerManager$HtcCpuCtrl;Lcom/htc/wrap/android/os/HtcWrapPowerManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;-><init>(Lcom/htc/wrap/android/os/HtcWrapPowerManager;Landroid/os/PowerManager$HtcCpuCtrl;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->mHtcCpuCtrl:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 66
    return-void
.end method

.method public acquire(J)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->mHtcCpuCtrl:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire(J)V

    .line 70
    return-void
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->mHtcCpuCtrl:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;->mHtcCpuCtrl:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 74
    return-void
.end method
