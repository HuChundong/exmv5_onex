.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    const-string v1, "GpsLocationProvider"

    const-string v2, "ALARM_WAKEUP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    const-string v1, "GpsLocationProvider"

    const-string v2, "ALARM_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 451
    :cond_2
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    const-string v1, "GpsLocationProvider"

    const-string v2, "Rxed SUPL INIT SMS "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 454
    :cond_3
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 455
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    .line 456
    const-string v1, "GpsLocationProvider"

    const-string v2, "Rxed SUPL INIT WAP "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_4
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 459
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$702(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 460
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_QUICKBOOT_POWEROFF and mStarted is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 464
    :cond_5
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider;->access$702(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 466
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_QUICKBOOT_POWERON and mStarted is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
