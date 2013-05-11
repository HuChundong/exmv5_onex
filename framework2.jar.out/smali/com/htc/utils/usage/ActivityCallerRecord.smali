.class public final Lcom/htc/utils/usage/ActivityCallerRecord;
.super Ljava/lang/Object;
.source "ActivityCallerRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeUsageLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "callerActivity"
    .parameter "callerPackage"
    .parameter "targetActivity"
    .parameter "targetPackage"

    .prologue
    .line 12
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 13
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "system_server"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "caller_history"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "caller_activity"

    invoke-interface {v1, v2, p0}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "caller_package"

    invoke-interface {v1, v2, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "activity"

    invoke-interface {v1, v2, p2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "package"

    invoke-interface {v1, v2, p3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 18
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 19
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 20
    return-void
.end method
