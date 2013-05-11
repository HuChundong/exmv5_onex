.class Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;
.super Landroid/os/Handler;
.source "HtcBatteryAmsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcBatteryAmsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcBatteryAmsListener;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcBatteryAmsListener;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;->this$0:Lcom/htc/server/HtcBatteryAmsListener;

    .line 48
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 54
    .local v0, startTimeMillis:J
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 64
    :goto_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v5, v0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 66
    const-string v3, "HtcBatteryAmsListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slow operation for msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void

    .line 57
    :pswitch_0
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 58
    .local v2, topApp:Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v3, p0, Lcom/htc/server/HtcBatteryAmsListener$WorkingHandler;->this$0:Lcom/htc/server/HtcBatteryAmsListener;

    invoke-virtual {v3, v2}, Lcom/htc/server/HtcBatteryAmsListener;->updateBatteryUsage(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v2           #topApp:Lcom/android/server/am/HtcWrapProcessRecord;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
