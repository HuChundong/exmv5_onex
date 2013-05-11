.class final Lcom/htc/album/helper/UserProfilingLog$3;
.super Ljava/lang/Object;
.source "UserProfilingLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/UserProfilingLog;->logStorageContent(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nCountAllPhoto:I

.field final synthetic val$nCountAllVideo:I

.field final synthetic val$nCountFolder:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    iput p1, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountFolder:I

    iput p2, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountAllPhoto:I

    iput p3, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountAllVideo:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 359
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 360
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.album"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "storage"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 363
    iget v1, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountFolder:I

    if-eq v3, v1, :cond_0

    .line 364
    const-string v1, "total_folder"

    iget v2, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountFolder:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 366
    :cond_0
    iget v1, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountAllPhoto:I

    if-eq v3, v1, :cond_1

    .line 367
    const-string v1, "total_photo"

    iget v2, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountAllPhoto:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 369
    :cond_1
    iget v1, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountAllVideo:I

    if-eq v3, v1, :cond_2

    .line 370
    const-string v1, "total_video"

    iget v2, p0, Lcom/htc/album/helper/UserProfilingLog$3;->val$nCountAllVideo:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 372
    :cond_2
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 373
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v1

    goto :goto_0
.end method
