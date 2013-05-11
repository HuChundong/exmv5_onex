.class Lcom/android/server/net/NetworkPolicyManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.extra.UID"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 469
    .local v2, uid:I
    invoke-static {v2}, Landroid/os/UserId;->getAppId(I)I

    move-result v1

    .line 470
    .local v1, appId:I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 471
    :try_start_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_PACKAGE_ADDED for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppLocked(I)V
    invoke-static {v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 491
    :cond_1
    :goto_0
    monitor-exit v4

    .line 492
    return-void

    .line 480
    :cond_2
    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UID_REMOVED for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_3
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mAppPolicy:Landroid/util/SparseIntArray;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 488
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppLocked(I)V
    invoke-static {v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 489
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
