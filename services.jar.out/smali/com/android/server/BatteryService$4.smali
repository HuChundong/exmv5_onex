.class Lcom/android/server/BatteryService$4;
.super Landroid/app/IProcessObserver$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final PROC_CMDLINE:Ljava/lang/String; = "/cmdline"

.field private static final PROC_PATH:Ljava/lang/String; = "/proc/"


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 9
    .parameter "pid"
    .parameter "uid"
    .parameter "foregroundActivities"

    .prologue
    const/4 v8, 0x0

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cmdline"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, procCmdline:Ljava/lang/String;
    const/4 v4, 0x0

    .line 394
    .local v4, procName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 396
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 397
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 401
    if-eqz v1, :cond_5

    .line 403
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 404
    const/4 v0, 0x0

    .line 413
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 416
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 417
    .local v5, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    const-string v6, "[>>>] "

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v6, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mPowerMeterInLevel:Z
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 425
    const-string v6, "RefL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :goto_3
    iget-object v6, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mPowerMeter:J
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 405
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    move-object v0, v1

    .line 407
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 398
    :catch_1
    move-exception v2

    .line 399
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    if-eqz v0, :cond_0

    .line 403
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 404
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_1

    .line 403
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 404
    const/4 v0, 0x0

    .line 407
    :cond_1
    :goto_6
    throw v6

    .line 413
    :cond_2
    const-string v4, "unknown"

    goto :goto_1

    .line 417
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_3
    const-string v6, "[<<<] "

    goto :goto_2

    .line 427
    :cond_4
    const-string v6, "RefC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 405
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_6

    .line 401
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 398
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_5
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .parameter "pid"
    .parameter "uid"
    .parameter "importance"

    .prologue
    .line 436
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 440
    return-void
.end method
