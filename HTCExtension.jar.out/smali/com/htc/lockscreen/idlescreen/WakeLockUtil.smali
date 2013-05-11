.class public Lcom/htc/lockscreen/idlescreen/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "WakeLockUtil"

.field private static final MAX_WAKELOCK_TIME:I = 0x3a98

.field private static sCommandLock:Landroid/os/PowerManager$WakeLock;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized commandWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 54
    const-class v3, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 57
    sget-object v0, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 61
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 62
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "IdleScreen:command_15"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 65
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 66
    const-string v2, "WakeLockUtil"

    const-string v4, "sCommandLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 74
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 75
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 76
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sCommandLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    const-string v2, "WakeLockUtil"

    const-string v4, "sCommandLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized eventWakeLock(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "bLock"

    .prologue
    .line 21
    const-class v3, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;

    monitor-enter v3

    if-eqz p1, :cond_3

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 24
    sget-object v0, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 27
    :cond_0
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 28
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 29
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "IdleScreen:event_15"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 32
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 33
    const-string v2, "WakeLockUtil"

    const-string v4, "eventWakeLock acquire"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v0           #old:Landroid/os/PowerManager$WakeLock;
    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    .line 41
    :cond_3
    :try_start_1
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 42
    sget-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 43
    const/4 v2, 0x0

    sput-object v2, Lcom/htc/lockscreen/idlescreen/WakeLockUtil;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    const-string v2, "WakeLockUtil"

    const-string v4, "eventWakeLock release"

    invoke-static {v2, v4}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
