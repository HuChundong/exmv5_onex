.class Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;
.super Ljava/lang/Object;
.source "HtcInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcInfoOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoiceAppUsage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;
    }
.end annotation


# instance fields
.field private app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

.field private isPhoneCalling:Z

.field private mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/htc/server/HtcInfoOperator;)V
    .locals 2
    .parameter "instance"

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;-><init>(Lcom/htc/server/HtcInfoOperator$1;)V

    iput-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    .line 167
    iput-object p1, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    .line 168
    return-void
.end method


# virtual methods
.method public declared-synchronized isVoiceInUse()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 172
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/server/HtcInfoOperator;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string v3, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceInUse, isPhoneCalling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", app_map not empty: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v2}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-boolean v2, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v2}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    move v2, v0

    .line 173
    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLastDeviceUseUpdateTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    iget-object v0, v0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    iget-object v0, v0, Lcom/htc/server/HtcInfoOperator;->mCurrentDeviceInfo:Landroid/app/HtcDeviceInfo;

    iput-wide p1, v0, Landroid/app/HtcDeviceInfo;->lastDeviceUseUpdateTime:J

    .line 183
    :cond_0
    return-void
.end method

.method public declared-synchronized start(II)V
    .locals 4
    .parameter "pid"
    .parameter "type"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->add(II)V

    .line 217
    iget-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPhoneCall()V
    .locals 4

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    .line 206
    iget-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(II)V
    .locals 8
    .parameter "pid"
    .parameter "type"

    .prologue
    const-wide/16 v6, 0x0

    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v4, p1, p2}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->remove(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 244
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 246
    .local v0, duration:J
    invoke-virtual {p0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 247
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 248
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "stop"

    #calls: Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V
    invoke-static {v4, v0, v1, v5}, Lcom/htc/server/HtcInfoOperator;->access$200(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V

    .line 249
    invoke-virtual {p0, v2, v3}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->setLastDeviceUseUpdateTime(J)V

    .line 250
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v0           #duration:J
    .end local v2           #time:J
    :cond_0
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized stopAll()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 257
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    .line 258
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->app_map:Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;

    invoke-virtual {v4}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage$AppMap;->clear()V

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 261
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 264
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 265
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 266
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "stopAll"

    #calls: Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V
    invoke-static {v4, v0, v1, v5}, Lcom/htc/server/HtcInfoOperator;->access$200(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V

    .line 267
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_0
    monitor-exit p0

    return-void

    .line 257
    .end local v0           #duration:J
    .end local v2           #time:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized stopPhoneCall()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 224
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    if-eqz v4, :cond_0

    .line 225
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isPhoneCalling:Z

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 228
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 230
    .local v0, duration:J
    invoke-virtual {p0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 231
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 232
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "stopPhoneCall"

    #calls: Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V
    invoke-static {v4, v0, v1, v5}, Lcom/htc/server/HtcInfoOperator;->access$200(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V

    .line 233
    invoke-virtual {p0, v2, v3}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->setLastDeviceUseUpdateTime(J)V

    .line 234
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v0           #duration:J
    .end local v2           #time:J
    :cond_0
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized updateTime()V
    .locals 8

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 192
    .local v2, time:J
    const-wide/16 v0, 0x0

    .line 194
    .local v0, duration:J
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->isVoiceInUse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J

    sub-long v0, v2, v4

    .line 196
    iget-object v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->mOperatorInstance:Lcom/htc/server/HtcInfoOperator;

    const-string v5, "auto update"

    #calls: Lcom/htc/server/HtcInfoOperator;->addDeviceUseTime(JLjava/lang/String;)V
    invoke-static {v4, v0, v1, v5}, Lcom/htc/server/HtcInfoOperator;->access$200(Lcom/htc/server/HtcInfoOperator;JLjava/lang/String;)V

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/server/HtcInfoOperator$VoiceAppUsage;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    .end local v0           #duration:J
    .end local v2           #time:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
