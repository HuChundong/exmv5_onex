.class Lcom/android/internal/telephony/HtcSequentialRadioPower$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcSequentialRadioPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/HtcSequentialRadioPower;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 640
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeqRdo-Quick power off - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I
    invoke-static {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$500(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$900(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$1000(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #setter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$902(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 648
    monitor-exit v1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 650
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeqRdo-Full power off - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I
    invoke-static {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$500(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$900(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$1000(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 655
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$2;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #setter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Ljava/lang/Boolean;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$902(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 656
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
