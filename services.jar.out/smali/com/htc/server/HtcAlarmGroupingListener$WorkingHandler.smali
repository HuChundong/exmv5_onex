.class Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;
.super Landroid/os/Handler;
.source "HtcAlarmGroupingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAlarmGroupingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAlarmGroupingListener;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAlarmGroupingListener;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAlarmGroupingListener;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 77
    .local v2, startTimeMillis:J
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 110
    :goto_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 112
    const-string v4, "HtcAlarmGroupingListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow operation for msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void

    .line 80
    :pswitch_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 81
    .local v1, process:Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAlarmGroupingListener;

    invoke-virtual {v4, v1}, Lcom/htc/server/HtcAlarmGroupingListener;->doAttachApplication(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v1           #process:Lcom/android/server/am/HtcWrapProcessRecord;
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcAlarmGroupingListener"

    const-string v5, "Unknown error"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 89
    .restart local v1       #process:Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAlarmGroupingListener;

    invoke-virtual {v4, v1}, Lcom/htc/server/HtcAlarmGroupingListener;->doTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 90
    .end local v1           #process:Lcom/android/server/am/HtcWrapProcessRecord;
    :catch_1
    move-exception v0

    .line 91
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "HtcAlarmGroupingListener"

    const-string v5, "Unknown error"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAlarmGroupingListener;

    invoke-virtual {v4}, Lcom/htc/server/HtcAlarmGroupingListener;->doGoingToSleep()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 97
    :catch_2
    move-exception v0

    .line 98
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "HtcAlarmGroupingListener"

    const-string v5, "Unknown error"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_3
    iget-object v4, p0, Lcom/htc/server/HtcAlarmGroupingListener$WorkingHandler;->this$0:Lcom/htc/server/HtcAlarmGroupingListener;

    invoke-virtual {v4}, Lcom/htc/server/HtcAlarmGroupingListener;->doWakingUp()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 104
    :catch_3
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "HtcAlarmGroupingListener"

    const-string v5, "Unknown error"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
