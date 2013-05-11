.class Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;
.super Ljava/lang/Object;
.source "IdleScreenEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockHelper"
.end annotation


# instance fields
.field private mTag:Ljava/lang/String;

.field private mUIWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 1
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 875
    const-string v0, "idlescreen"

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mTag:Ljava/lang/String;

    .line 882
    return-void
.end method


# virtual methods
.method public UIWakeLock(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "ms"

    .prologue
    .line 897
    monitor-enter p0

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, old:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 900
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 901
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 903
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mUIWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    if-lez p2, :cond_1

    .line 904
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 905
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mUIWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 907
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mUIWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 908
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mUIWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 910
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 911
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 914
    :cond_2
    monitor-exit p0

    .line 915
    return-void

    .line 914
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 889
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine$WakeLockHelper;->mTag:Ljava/lang/String;

    .line 890
    return-void
.end method
