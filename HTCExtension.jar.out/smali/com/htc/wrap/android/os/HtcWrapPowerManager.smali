.class public Lcom/htc/wrap/android/os/HtcWrapPowerManager;
.super Ljava/lang/Object;
.source "HtcWrapPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/os/HtcWrapPowerManager$1;,
        Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;
    }
.end annotation


# static fields
.field public static final CPU_FREQ_HIGH:I = 0x4

.field public static final CPU_FREQ_HIGHEST:I = 0x5

.field public static final CPU_FREQ_LOW:I = 0x2

.field public static final CPU_FREQ_LOWEST:I = 0x1

.field public static final CPU_FREQ_MEDIUM:I = 0x3

.field public static final CPU_MAX_FREQ:I = 0x80

.field public static final CPU_MAX_NUM:I = 0x200

.field public static final CPU_MIN_FREQ:I = 0x100

.field public static final CPU_MIN_NUM:I = 0x400

.field public static final CPU_NUM_DUAL:I = 0x2

.field public static final CPU_NUM_QUAD:I = 0x4

.field public static final CPU_NUM_SINGLE:I = 0x1

.field public static final CPU_NUM_TRIPLE:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mPowerManager:Landroid/os/PowerManager;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mPowerManager:Landroid/os/PowerManager;

    .line 39
    iput-object p1, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mPowerManager:Landroid/os/PowerManager;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method


# virtual methods
.method public newHtcCpuCtrlWrap(IILjava/lang/String;)Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;
    .locals 3
    .parameter "flags"
    .parameter "level"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    if-nez p3, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag is null when calling newHtcCpuCtrl(int flags, int level, String tag)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    .line 88
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "level is invalid when calling newHtcCpuCtrl(int flags, int level, String tag)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_0
    new-instance v0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-direct {p0}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;-><init>(Lcom/htc/wrap/android/os/HtcWrapPowerManager;Landroid/os/PowerManager$HtcCpuCtrl;Lcom/htc/wrap/android/os/HtcWrapPowerManager$1;)V

    .line 105
    :goto_0
    return-object v0

    .line 98
    :cond_2
    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, p1, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_4

    .line 100
    :cond_3
    packed-switch p2, :pswitch_data_1

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "level is invalid when calling newHtcCpuCtrl(int flags, int level, String tag)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_1
    new-instance v0, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;

    invoke-direct {p0}, Lcom/htc/wrap/android/os/HtcWrapPowerManager;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/wrap/android/os/HtcWrapPowerManager$HtcCpuCtrlWrap;-><init>(Lcom/htc/wrap/android/os/HtcWrapPowerManager;Landroid/os/PowerManager$HtcCpuCtrl;Lcom/htc/wrap/android/os/HtcWrapPowerManager$1;)V

    goto :goto_0

    .line 110
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "flags is invalid when calling initHtcCpuCtrl(int flags, int level, String tag)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 100
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
