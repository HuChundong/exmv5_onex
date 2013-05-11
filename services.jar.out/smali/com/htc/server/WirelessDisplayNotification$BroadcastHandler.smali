.class final Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayNotification;


# direct methods
.method private constructor <init>(Lcom/htc/server/WirelessDisplayNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/WirelessDisplayNotification;Lcom/htc/server/WirelessDisplayNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;-><init>(Lcom/htc/server/WirelessDisplayNotification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v7, 0x0

    const v6, 0x4020066

    const/4 v5, 0x0

    .line 566
    if-nez p2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 571
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #calls: Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z
    invoke-static {v3, p1}, Lcom/htc/server/WirelessDisplayNotification;->access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z

    move-result v3

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    .line 572
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    const-string v2, "WirelessDisplayNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 577
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 578
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I
    invoke-static {v2, v5}, Lcom/htc/server/WirelessDisplayNotification;->access$302(Lcom/htc/server/WirelessDisplayNotification;I)I

    .line 579
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J
    invoke-static {v2, v7, v8}, Lcom/htc/server/WirelessDisplayNotification;->access$402(Lcom/htc/server/WirelessDisplayNotification;J)J

    goto :goto_0

    .line 584
    .end local v1           #nm:Landroid/app/NotificationManager;
    :cond_3
    const-string v2, "com.htc.wifidisplay.NOTIFICATION_STATUS_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    iget-object v3, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #calls: Lcom/htc/server/WirelessDisplayNotification;->getNotificationPreference(Landroid/content/Context;)Z
    invoke-static {v3, p1}, Lcom/htc/server/WirelessDisplayNotification;->access$200(Lcom/htc/server/WirelessDisplayNotification;Landroid/content/Context;)Z

    move-result v3

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayNotification;->access$102(Lcom/htc/server/WirelessDisplayNotification;Z)Z

    .line 586
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_4

    const-string v2, "WirelessDisplayNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v4}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_4
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #getter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationPreference:Z
    invoke-static {v2}, Lcom/htc/server/WirelessDisplayNotification;->access$100(Lcom/htc/server/WirelessDisplayNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 591
    .restart local v1       #nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 592
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mCurrNotificationType:I
    invoke-static {v2, v5}, Lcom/htc/server/WirelessDisplayNotification;->access$302(Lcom/htc/server/WirelessDisplayNotification;I)I

    .line 593
    iget-object v2, p0, Lcom/htc/server/WirelessDisplayNotification$BroadcastHandler;->this$0:Lcom/htc/server/WirelessDisplayNotification;

    #setter for: Lcom/htc/server/WirelessDisplayNotification;->mNotificationWhen:J
    invoke-static {v2, v7, v8}, Lcom/htc/server/WirelessDisplayNotification;->access$402(Lcom/htc/server/WirelessDisplayNotification;J)J

    goto/16 :goto_0
.end method
