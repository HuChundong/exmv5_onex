.class Lcom/android/internal/policy/impl/PhoneWindowManager$26;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 6457
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6459
    const-string v1, "com.htc.AutoMotive.Service.ModeChange"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6460
    const-string v1, "AutoMotive_Current_Mode"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6462
    .local v0, nMode:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    if-eq v4, v1, :cond_0

    .line 6463
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "mAutoMotiveEnabled != nMode"

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelRecentAppsAction(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)V

    .line 6467
    :cond_0
    if-nez v0, :cond_3

    .line 6468
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$502(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 6472
    :goto_1
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto Motive mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6474
    .end local v0           #nMode:I
    :cond_1
    return-void

    .restart local v0       #nMode:I
    :cond_2
    move v1, v3

    .line 6462
    goto :goto_0

    .line 6470
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAutoMotiveEnabled:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$502(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_1
.end method
