.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, action:Ljava/lang/String;
    const/16 v19, 0x0

    .line 588
    .local v19, queryRestart:Z
    const/16 v16, 0x0

    .line 592
    .local v16, packageChanged:Z
    const-string v22, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 593
    const-string v22, "NotificationService"

    const-string v23, "mIntentReceiver() Intent.ACTION_SHUTDOWN"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->cancelAll_pd()V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const-string v22, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 596
    const-string v22, "NotificationService"

    const-string v23, "mIntentReceiver() Intents.ACTION_QUICKBOOT_POWEROFF"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->cancelAll_pd()V

    goto :goto_0

    .line 601
    :cond_2
    const-string v22, "com.htc.intent.action.QUICKBOOT_POWERON"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 602
    const-string v22, "NotificationService"

    const-string v23, "mIntentReceiver() Intents.ACTION_QUICKBOOT_POWERON"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/server/NotificationManagerService;->updateLights(Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;Z)V

    goto :goto_0

    .line 609
    :cond_3
    const-string v22, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 610
    const-string v22, "NotificationService"

    const-string v23, "mIntentReceiver() Intent.ACTION_BATTERY_CHANGED"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v22, "plugged"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_8

    const/4 v7, 0x1

    .line 612
    .local v7, batteryCharging:Z
    :goto_1
    const-string v22, "level"

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 614
    .local v15, level:I
    if-ltz v15, :cond_9

    const/16 v22, 0x8

    move/from16 v0, v22

    if-gt v15, v0, :cond_9

    const/4 v9, 0x1

    .line 615
    .local v9, batteryLow:Z
    :goto_2
    const-string v22, "status"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 616
    .local v20, status:I
    const-string v22, "health"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 618
    .local v12, health:I
    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/16 v22, 0x64

    move/from16 v0, v22

    if-ne v15, v0, :cond_a

    :cond_4
    const/4 v8, 0x1

    .line 620
    .local v8, batteryFull:Z
    :goto_3
    sget-boolean v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v22, :cond_5

    .line 621
    const-string v22, "NotificationService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "batteryCharging="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", level="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", status="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", health="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v22

    move/from16 v0, v22

    if-ne v7, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryLow:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Z

    move-result v22

    move/from16 v0, v22

    if-ne v9, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryHealth:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->access$2200(Lcom/android/server/NotificationManagerService;)I

    move-result v22

    move/from16 v0, v22

    if-ne v12, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->access$2300(Lcom/android/server/NotificationManagerService;)I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryFull:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->access$2400(Lcom/android/server/NotificationManagerService;)Z

    move-result v22

    move/from16 v0, v22

    if-eq v8, v0, :cond_0

    .line 630
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/NotificationManagerService;->isFlashLedDuringCharging()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v22

    move/from16 v0, v22

    if-eq v0, v7, :cond_7

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static/range {v22 .. v22}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v22

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 634
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z
    invoke-static {v0, v7}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryLow:Z
    invoke-static {v0, v9}, Lcom/android/server/NotificationManagerService;->access$2102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryFull:Z
    invoke-static {v0, v8}, Lcom/android/server/NotificationManagerService;->access$2402(Lcom/android/server/NotificationManagerService;Z)Z

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryHealth:I
    invoke-static {v0, v12}, Lcom/android/server/NotificationManagerService;->access$2202(Lcom/android/server/NotificationManagerService;I)I

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    #setter for: Lcom/android/server/NotificationManagerService;->mBatteryStatus:I
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;I)I

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/android/server/NotificationManagerService;->updateLights(Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/NotificationManagerService;->access$1900(Lcom/android/server/NotificationManagerService;Z)V

    goto/16 :goto_0

    .line 611
    .end local v7           #batteryCharging:Z
    .end local v8           #batteryFull:Z
    .end local v9           #batteryLow:Z
    .end local v12           #health:I
    .end local v15           #level:I
    .end local v20           #status:I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 614
    .restart local v7       #batteryCharging:Z
    .restart local v15       #level:I
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 618
    .restart local v9       #batteryLow:Z
    .restart local v12       #health:I
    .restart local v20       #status:I
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 643
    .end local v7           #batteryCharging:Z
    .end local v9           #batteryLow:Z
    .end local v12           #health:I
    .end local v15           #level:I
    .end local v20           #status:I
    :cond_b
    const-string v22, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string v22, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string v22, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    const-string v22, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    const-string v22, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 648
    :cond_c
    const/16 v17, 0x0

    .line 649
    .local v17, pkgList:[Ljava/lang/String;
    const-string v22, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 650
    const-string v22, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 680
    :goto_4
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_0

    .line 681
    move-object/from16 v6, v17

    .local v6, arr$:[Ljava/lang/String;
    array-length v14, v6

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_5
    if-ge v13, v14, :cond_0

    aget-object v18, v6, v13

    .line 682
    .local v18, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    if-nez v19, :cond_10

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 681
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 651
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v18           #pkgName:Ljava/lang/String;
    :cond_d
    if-eqz v19, :cond_e

    .line 652
    const-string v22, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 654
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 655
    .local v21, uri:Landroid/net/Uri;
    if-eqz v21, :cond_0

    .line 658
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v18

    .line 659
    .restart local v18       #pkgName:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 662
    if-eqz v16, :cond_f

    .line 667
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 669
    .local v11, enabled:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v11, v0, :cond_0

    if-eqz v11, :cond_0

    .line 678
    .end local v11           #enabled:I
    :cond_f
    :goto_7
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v17           #pkgList:[Ljava/lang/String;
    const/16 v22, 0x0

    aput-object v18, v17, v22

    .restart local v17       #pkgList:[Ljava/lang/String;
    goto :goto_4

    .line 673
    :catch_0
    move-exception v10

    .line 674
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v22, "NotificationService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getApplicationEnabledSetting fail "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 682
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .end local v21           #uri:Landroid/net/Uri;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    :cond_10
    const/16 v22, 0x0

    goto :goto_6

    .line 685
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v17           #pkgList:[Ljava/lang/String;
    .end local v18           #pkgName:Ljava/lang/String;
    :cond_11
    const-string v22, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/NotificationManagerService;->access$2502(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_0

    .line 689
    :cond_12
    const-string v22, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/NotificationManagerService;->access$2502(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_0

    .line 691
    :cond_13
    const-string v22, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v22, v0

    const-string v23, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static/range {v22 .. v23}, Lcom/android/server/NotificationManagerService;->access$2602(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_0

    .line 696
    :cond_14
    const-string v22, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    goto/16 :goto_0
.end method
