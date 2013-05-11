.class final Lcom/htc/album/helper/UserProfilingLog$2;
.super Ljava/lang/Object;
.source "UserProfilingLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/UserProfilingLog;->logSourceSwitch(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$szSrcName:Ljava/lang/String;

.field final synthetic val$szSrcType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/album/helper/UserProfilingLog$2;->val$szSrcType:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/album/helper/UserProfilingLog$2;->val$szSrcName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 290
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 291
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.album"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "album_source"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "service_type"

    iget-object v3, p0, Lcom/htc/album/helper/UserProfilingLog$2;->val$szSrcType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "service_name"

    iget-object v3, p0, Lcom/htc/album/helper/UserProfilingLog$2;->val$szSrcName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 296
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 297
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0
.end method
