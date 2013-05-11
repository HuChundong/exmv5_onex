.class public Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;,
        Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;
    }
.end annotation


# instance fields
.field private final DRM_SINGLE_PROJECTION:[Ljava/lang/String;

.field INDEX_ID:I

.field private final MEDIA_SINGLE_PROJECTION:[Ljava/lang/String;

.field private SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

.field private mChildContext:Landroid/content/Context;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDrm:Z

.field private mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field private mUri:Landroid/net/Uri;

.field private mbShareAndDelete:Z

.field private mbViewSingleImage:Z

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 10
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 9092
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 9093
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 7237
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 7238
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    .line 7241
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->MEDIA_SINGLE_PROJECTION:[Ljava/lang/String;

    .line 7246
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "favorite"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->DRM_SINGLE_PROJECTION:[Ljava/lang/String;

    .line 9094
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;

    .line 9095
    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 9096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z

    .line 9097
    iput-object p4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    .line 9101
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mDrm:Z

    .line 9103
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->DRM_SINGLE_PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 9104
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    .line 9107
    :cond_0
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9108
    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9109
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 9110
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 9113
    :cond_3
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v0, :cond_4

    .line 9123
    :goto_0
    return-void

    .line 9118
    :cond_4
    if-eqz p4, :cond_5

    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v0, :cond_5

    .line 9119
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p3

    move-object v5, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$DrmUriImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;JLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;ILandroid/net/Uri;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    goto :goto_0

    .line 9121
    :cond_5
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILandroid/net/Uri;Z)V
    .locals 11
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "uriAbsoluteFilePath"
    .parameter "bShareAndDelete"

    .prologue
    .line 9127
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 9128
    if-eqz p8, :cond_1

    move-object v3, p2

    :goto_0
    if-eqz p8, :cond_2

    move-object v5, p4

    :goto_1
    if-eqz p8, :cond_3

    move/from16 v6, p6

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 7237
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 7238
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v2, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    .line 7241
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "datetaken"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "date_modified"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->MEDIA_SINGLE_PROJECTION:[Ljava/lang/String;

    .line 7246
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "_size"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "_display_name"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "delivery_type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "date_added"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "existence"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "favorite"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->DRM_SINGLE_PROJECTION:[Ljava/lang/String;

    .line 9130
    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 9131
    if-eqz p8, :cond_4

    .end local p7
    :goto_3
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    .line 9132
    new-instance v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)V

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 9134
    if-nez p8, :cond_5

    .line 9149
    :cond_0
    return-void

    .line 9128
    .restart local p7
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v5, p7

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_4
    move-object/from16 p7, p4

    .line 9131
    goto :goto_3

    .line 9137
    .end local p7
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z

    .line 9138
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z

    .line 9140
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9142
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 9143
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 9145
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create image cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9146
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method static synthetic access$2000(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7223
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7223
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7223
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7223
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7223
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7223
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z

    return v0
.end method

.method private makeInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5
    .parameter "uri"

    .prologue
    .line 9389
    const/4 v1, 0x0

    .line 9391
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 9395
    :goto_0
    return-object v2

    .line 9393
    :catch_0
    move-exception v0

    .line 9394
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeInputStream] Got exception during openInputStream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9395
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9185
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v1, :cond_0

    .line 9186
    const/4 v1, 0x0

    .line 9189
    :goto_0
    return-object v1

    .line 9188
    :cond_0
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, " ASC"

    .line 9189
    .local v0, ascending:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9188
    .end local v0           #ascending:Ljava/lang/String;
    :cond_1
    const-string v0, " DESC"

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 7223
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public closeCursor()V
    .locals 1

    .prologue
    .line 9232
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 9233
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 9236
    :cond_0
    return-void
.end method

.method public bridge synthetic commitChanges()V
    .locals 0

    .prologue
    .line 7223
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->commitChanges()V

    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 9153
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9163
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 9227
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->closeCursor()V

    .line 9228
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 9246
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z

    if-eqz v1, :cond_1

    .line 9248
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 9249
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 9250
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 9260
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 9252
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 9256
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 9257
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    .line 9260
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 9264
    if-nez p1, :cond_0

    .line 9265
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 9267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 9290
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9291
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 9293
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 9280
    if-nez p1, :cond_0

    .line 9281
    const/4 v0, 0x0

    .line 9286
    :goto_0
    return-object v0

    .line 9283
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9284
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    goto :goto_0

    .line 9286
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageWithId(J)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "id"

    .prologue
    .line 9298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImages(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9271
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_0

    .line 9276
    :goto_0
    return-void

    .line 9275
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7223
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    return-object v0
.end method

.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 9384
    const/4 v0, -0x1

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 9328
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 9374
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 9379
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 9308
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 9318
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 9363
    const/4 v0, -0x1

    return v0
.end method

.method protected indexFavorite()I
    .locals 1

    .prologue
    .line 9436
    const/4 v0, 0x0

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 9323
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 9333
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 9338
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 9313
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 9343
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 9303
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 9348
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 9353
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 9368
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 9358
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic isFavoriteList()Z
    .locals 1

    .prologue
    .line 7223
    invoke-super {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->isFavoriteList()Z

    move-result v0

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 9239
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 9240
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    goto :goto_0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 9401
    const/4 v0, 0x0

    .line 9404
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    .line 9405
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    move-object p4, v2

    .line 9406
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 9408
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    .line 9409
    const/4 v4, 0x1

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9410
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9412
    invoke-static {p4, p1}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v4

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 9413
    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v4, v6, :cond_1

    .line 9414
    const/4 v4, 0x1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 9415
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9417
    :cond_2
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9418
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9419
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C: got bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with sampleSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9421
    :cond_3
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 9426
    :goto_0
    return-object v3

    .line 9422
    :catch_0
    move-exception v1

    .line 9423
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got io exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 8
    .parameter "i"

    .prologue
    .line 9193
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 9194
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9223
    :cond_0
    :goto_0
    return-void

    .line 9197
    :cond_1
    monitor-enter v0

    .line 9203
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 9210
    .local v3, moved:Z
    if-eqz v3, :cond_3

    .line 9212
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 9213
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 9214
    monitor-exit v0

    goto :goto_0

    .line 9222
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v3           #moved:Z
    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 9205
    :catch_0
    move-exception v1

    .line 9207
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9208
    monitor-exit v0

    goto :goto_0

    .line 9216
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v3       #moved:Z
    :cond_2
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 9217
    .local v4, u:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9218
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mSingleImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 9219
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->requery()V

    .line 9222
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v4           #u:Landroid/net/Uri;
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 9429
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->requery()V

    .line 9430
    const/4 v0, 0x0

    return v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9167
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v0, :cond_0

    .line 9168
    const-string v0, "(existence=?)"

    .line 9170
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(_data=?)"

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9174
    iget-boolean v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mDrm:Z

    if-eqz v3, :cond_0

    .line 9175
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "exist"

    aput-object v3, v2, v4

    .line 9181
    :goto_0
    return-object v2

    .line 9177
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9178
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/String;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 9179
    .local v0, sPattern:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 9180
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 9181
    .local v2, stringArgs:[Ljava/lang/String;
    goto :goto_0
.end method
