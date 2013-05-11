.class public Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;
.super Ljava/lang/Object;
.source "RemoveFileCacheTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/RemoveFileCacheTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileCacheItem"
.end annotation


# instance fields
.field public dateModified:J

.field public dateTaken:J

.field public filePath:Ljava/lang/String;

.field public imageSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 3
    .parameter "filePath"
    .parameter "dateModified"
    .parameter "dateTaken"
    .parameter "imageSize"

    .prologue
    const-wide/16 v1, -0x1

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->filePath:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->dateModified:J

    .line 31
    iput-wide v1, p0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->dateTaken:J

    .line 32
    iput-wide v1, p0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->imageSize:J

    .line 35
    iput-object p1, p0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->filePath:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->dateModified:J

    .line 37
    iput-wide p4, p0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->dateTaken:J

    .line 38
    iput-wide p6, p0, Lcom/htc/album/helper/RemoveFileCacheTask$FileCacheItem;->imageSize:J

    .line 39
    return-void
.end method
