.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 36
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 38
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    invoke-static {}, Landroid/os/Vibrator;->isLoggableVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "Vibrator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vib dbg, cancel, obj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hasVibrator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 43
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return v0

    .line 47
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->hasVibrator()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public vibrate(J)V
    .locals 4
    .parameter "milliseconds"

    .prologue
    .line 55
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_1

    .line 56
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IVibratorService;->vibrate(JLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    invoke-static {}, Landroid/os/Vibrator;->isLoggableVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "Vibrator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vib dbg, vibrate, time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", obj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public vibrate([JI)V
    .locals 10
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 73
    iget-object v7, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v7, :cond_1

    .line 74
    const-string v7, "Vibrator"

    const-string v8, "Failed to vibrate; no vibrator service."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    array-length v7, p1

    if-ge p2, v7, :cond_3

    .line 82
    :try_start_0
    iget-object v7, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v8, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v7, p1, p2, v8}, Landroid/os/IVibratorService;->vibratePattern([JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    invoke-static {}, Landroid/os/Vibrator;->isLoggableVibrator()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, p1

    mul-int/lit8 v7, v7, 0x7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-wide v2, v0, v4

    .line 90
    .local v2, i:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 83
    .end local v0           #arr$:[J
    .end local v2           #i:J
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "Vibrator"

    const-string v8, "Failed to vibrate."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 92
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #arr$:[J
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v7, "Vibrator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "vib dbg, vibrate, repeat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pattern: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", obj: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v0           #arr$:[J
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v7
.end method
