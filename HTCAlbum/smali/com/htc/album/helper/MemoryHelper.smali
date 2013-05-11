.class public Lcom/htc/album/helper/MemoryHelper;
.super Ljava/lang/Object;
.source "MemoryHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MemoryHelper"

.field public static final TRIM_MEMORY_LEVEL_DEFAULT:I = 0x3c

.field public static final TRIM_MEMORY_LEVEL_KILL:I = 0x14

.field public static final TRIM_MEMORY_LEVEL_NEVER:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final doTrimMemory(Landroid/app/Activity;II)V
    .locals 3
    .parameter "activity"
    .parameter "level"
    .parameter "criteria"

    .prologue
    .line 29
    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 33
    const-string v0, "MemoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Gallery][onTrimMemory] level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", criteria = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_2
    if-lez p2, :cond_0

    if-lt p1, p2, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
