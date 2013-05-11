.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Landroid/os/Vibrator;->isLoggableVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib dbg, vibrator created, obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    return-void
.end method

.method public static isLoggableVibrator()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    return v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract hasVibrator()Z
.end method

.method public abstract vibrate(J)V
.end method

.method public abstract vibrate([JI)V
.end method

.method public vibrateEx([B)V
    .locals 0
    .parameter "params"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    return-void
.end method
