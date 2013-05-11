.class Lcom/android/server/PowerManagerService$17;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 5116
    iput-object p1, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 5140
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 5119
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5120
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged: light value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 5124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5125
    monitor-exit v1

    .line 5135
    :goto_0
    return-void

    .line 5127
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$10000(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    #calls: Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V
    invoke-static {v0, v2, v3}, Lcom/android/server/PowerManagerService;->access$10100(Lcom/android/server/PowerManagerService;IZ)V

    .line 5128
    iget-object v0, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10000(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5129
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5600()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5130
    const-string v0, "PowerManagerService"

    const-string v2, "onSensorChanged: Clearing mWaitingForFirstLightSensor."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$10002(Lcom/android/server/PowerManagerService;Z)Z

    .line 5134
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
