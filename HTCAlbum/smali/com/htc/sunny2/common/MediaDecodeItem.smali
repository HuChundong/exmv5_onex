.class public abstract Lcom/htc/sunny2/common/MediaDecodeItem;
.super Lcom/htc/sunny2/common/CacheItem;
.source "MediaDecodeItem.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x1001

.field public static final TYPE_IMAGE_RESOURCE_ID:I = 0x1002

.field public static final TYPE_VIDEO:I = 0x2001


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V
    .locals 0
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "ioType"
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V
    .locals 0
    .parameter "ioType"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V

    .line 19
    return-void
.end method


# virtual methods
.method public abstract decode()V
.end method

.method public getPosistion()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    return v0
.end method
