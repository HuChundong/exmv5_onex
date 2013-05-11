.class Lcom/android/server/PowerManagerService$9;
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
    .line 3721
    iput-object p1, p0, Lcom/android/server/PowerManagerService$9;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3723
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3724
    const-string v0, "PowerManagerService"

    const-string v1, "Clear PhoneOffHook ScreenTimeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    :cond_0
    monitor-enter p0

    .line 3727
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$9;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mIsUserActivityScreenDelay:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$8102(Lcom/android/server/PowerManagerService;Z)Z

    .line 3728
    iget-object v0, p0, Lcom/android/server/PowerManagerService$9;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)V

    .line 3729
    monitor-exit p0

    .line 3730
    return-void

    .line 3729
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
