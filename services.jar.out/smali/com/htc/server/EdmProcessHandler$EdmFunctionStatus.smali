.class Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;
.super Ljava/lang/Object;
.source "EdmProcessHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/EdmProcessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmFunctionStatus"
.end annotation


# instance fields
.field private mFinishedTime:J

.field private mLastDuration:J

.field private mLastDurationAfterTimeout:J

.field private final mRequestCode:I

.field private mStartTime:J

.field private mStatus:I

.field final synthetic this$0:Lcom/htc/server/EdmProcessHandler;


# direct methods
.method constructor <init>(Lcom/htc/server/EdmProcessHandler;I)V
    .locals 0
    .parameter
    .parameter "requestCode"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->this$0:Lcom/htc/server/EdmProcessHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    .line 214
    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->reset()V

    .line 215
    return-void
.end method

.method private computeDuration()J
    .locals 4

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    iget-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDuration:J

    .line 232
    iget-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDuration:J

    return-wide v0
.end method

.method private reset()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    .line 237
    iput-wide v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    .line 238
    iput-wide v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    .line 239
    iput-wide v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDuration:J

    .line 240
    iput-wide v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDurationAfterTimeout:J

    .line 241
    return-void
.end method

.method private timeout()V
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    .line 245
    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->computeDuration()J

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    .line 247
    return-void
.end method


# virtual methods
.method public executing()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->reset()V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    .line 271
    return-object p0
.end method

.method public finished()V
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    .line 276
    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->computeDuration()J

    .line 277
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    .line 278
    return-void
.end method

.method public finishedAfterTimeout()V
    .locals 4

    .prologue
    .line 283
    invoke-static {}, Lcom/htc/server/EdmProcessHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EdmProcessHandler"

    const-string v1, "Internal component attempts to send response after timeout happened!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    .line 285
    iget-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    iget-wide v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDurationAfterTimeout:J

    .line 286
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    .line 287
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 219
    invoke-static {}, Lcom/htc/server/EdmProcessHandler;->access$000()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 221
    :try_start_0
    iget v0, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 222
    invoke-static {}, Lcom/htc/server/EdmProcessHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EdmProcessHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout happened for request code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->timeout()V

    .line 227
    :cond_1
    :goto_0
    monitor-exit v1

    .line 228
    return-void

    .line 225
    :cond_2
    invoke-static {}, Lcom/htc/server/EdmProcessHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EdmProcessHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout for request code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " triggered but it\'s not executing!! Do nothing......"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->this$0:Lcom/htc/server/EdmProcessHandler;

    iget v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mRequestCode:I

    #calls: Lcom/htc/server/EdmProcessHandler;->getRequestCodeString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/server/EdmProcessHandler;->access$200(Lcom/htc/server/EdmProcessHandler;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->this$0:Lcom/htc/server/EdmProcessHandler;

    iget v2, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStatus:I

    #calls: Lcom/htc/server/EdmProcessHandler;->getStatusString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/server/EdmProcessHandler;->access$300(Lcom/htc/server/EdmProcessHandler;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", StartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FinishedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mFinishedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastDurationAfterTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/EdmProcessHandler$EdmFunctionStatus;->mLastDurationAfterTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
