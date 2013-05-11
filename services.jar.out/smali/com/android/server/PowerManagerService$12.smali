.class Lcom/android/server/PowerManagerService$12;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4030
    iput-object p1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4033
    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4034
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "mTPEAlgorithmTimeoutTask: TPE algorithm. restore."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    iget-object v0, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZZI)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;IZZI)V

    .line 4036
    monitor-exit v1

    .line 4037
    return-void

    .line 4036
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
