.class public Lcom/htc/videowidget/videoview/utilities/metadata/LocalMetaData;
.super Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;
.source "LocalMetaData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalMetaData"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 24
    return-void
.end method

.method private checkEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "val"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 201
    if-nez p1, :cond_1

    move-object p1, v0

    .line 205
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 202
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v2, :cond_2

    move-object p1, v0

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    move-object p1, v0

    goto :goto_0
.end method

.method private getMetaFromPath(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 213
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, canonicalPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 218
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mPath:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    .line 220
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, mime:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    .line 222
    const-string v4, "LocalMetaData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMetaFromPath] Path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, "LocalMetaData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMetaFromPath] Title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "LocalMetaData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getMetaFromPath] MimeType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 231
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #mime:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LocalMetaData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMetaFromPath exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #canonicalPath:Ljava/lang/String;
    .restart local v2       #f:Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v4, "LocalMetaData"

    const-string v5, "[getMetaFromPath] File is not exist"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private queraMeta(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 123
    const-string v4, "LocalMetaData"

    const-string v5, "query foo "

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, mMediaRetriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p1, :cond_2

    .line 128
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    .end local v2           #mMediaRetriever:Landroid/media/MediaMetadataRetriever;
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 131
    .restart local v2       #mMediaRetriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoview/utilities/metadata/LocalMetaData;->checkEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDate:Ljava/lang/String;

    .line 139
    const-string v3, ""

    .line 140
    .local v3, metadata:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    const-string v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 144
    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasAudio:Z

    .line 148
    :cond_0
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 150
    const-string v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 152
    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasVideo:Z

    .line 159
    :cond_1
    const/16 v4, 0x13

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoHeight:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :goto_1
    const/16 v4, 0x12

    :try_start_2
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoWidth:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 177
    :goto_2
    const/16 v4, 0x9

    :try_start_3
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDuration:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 186
    :goto_3
    const/16 v4, 0x14

    :try_start_4
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mBitRate:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 193
    :goto_4
    const-string v4, "LocalMetaData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/metadata/LocalMetaData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v3           #metadata:Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 196
    :cond_3
    const/4 v2, 0x0

    .line 197
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 135
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "LocalMetaData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v3       #metadata:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 170
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 172
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 179
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 181
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 188
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 190
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method private queryFromDatabase(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 47
    const-string v0, "LocalMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-nez p2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const/4 v6, 0x0

    .line 54
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, scheme:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "mime_type"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "_size"

    aput-object v4, v2, v0

    .line 61
    .local v2, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data like \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, where:Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, canonicalPath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v9, f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 77
    :goto_1
    const-string v0, "LocalMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File uri path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data like \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .end local v7           #canonicalPath:Ljava/lang/String;
    .end local v9           #f:Ljava/io/File;
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "content://media/external/video"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    move-result-object v6

    .line 91
    :goto_2
    if-eqz v6, :cond_5

    .line 93
    const-string v0, "LocalMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query ok size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mPath:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    .line 97
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v0, 0x3

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mFileSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :goto_3
    :try_start_2
    const-string v0, "LocalMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[queryFromDatabase] Path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "LocalMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[queryFromDatabase] Title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "LocalMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[queryFromDatabase] MimeType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    :goto_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 75
    .restart local v3       #where:Ljava/lang/String;
    .restart local v7       #canonicalPath:Ljava/lang/String;
    .restart local v9       #f:Ljava/io/File;
    :cond_3
    :try_start_3
    const-string v0, "LocalMetaData"

    const-string v4, "[queryFromDatabase] File is not exist"

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 111
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #canonicalPath:Ljava/lang/String;
    .end local v9           #f:Ljava/io/File;
    .end local v10           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 113
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "LocalMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 87
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_4
    :try_start_5
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 88
    .local v1, uri2:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_2

    .line 108
    .end local v1           #uri2:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    :cond_5
    const-string v0, "LocalMetaData"

    const-string v4, "query failed"

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 117
    .end local v2           #proj:[Ljava/lang/String;
    .end local v10           #scheme:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 100
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v10       #scheme:Ljava/lang/String;
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method


# virtual methods
.method public prepare()V
    .locals 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mIsReady:Z

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/htc/videowidget/videoview/utilities/metadata/LocalMetaData;->queryFromDatabase(Landroid/content/Context;Landroid/net/Uri;)V

    .line 34
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/metadata/LocalMetaData;->getMetaFromPath(Landroid/net/Uri;)V

    .line 36
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mIsReady:Z

    .line 38
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    invoke-interface {v0, p0}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;->onPrepared(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V

    .line 43
    :cond_1
    return-void
.end method
