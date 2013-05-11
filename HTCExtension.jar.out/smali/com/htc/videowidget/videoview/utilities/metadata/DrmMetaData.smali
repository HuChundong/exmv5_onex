.class public Lcom/htc/videowidget/videoview/utilities/metadata/DrmMetaData;
.super Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;
.source "DrmMetaData.java"


# static fields
.field private static final OMA_PATH:Ljava/lang/String; = "content://drm/"

.field private static final TAG:Ljava/lang/String; = "DrmMetaData"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 34
    return-void
.end method

.method public static isDrmUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private queryFromDatabase(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 53
    const-string v0, "DrmMetaData"

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

    .line 54
    if-nez p2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const/4 v6, 0x0

    .line 60
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, scheme:Ljava/lang/String;
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

    .line 67
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

    .line 69
    .local v3, where:Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, path:Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v0, "/mnt"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 77
    :cond_2
    const-string v0, "DrmMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File uri path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .end local v8           #path:Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "content://drm/video"

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
    :goto_1
    if-eqz v6, :cond_5

    .line 93
    const-string v0, "DrmMetaData"

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
    :goto_2
    :try_start_2
    const-string v0, "DrmMetaData"

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
    const-string v0, "DrmMetaData"

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
    const-string v0, "DrmMetaData"

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
    :goto_3
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 87
    .restart local v3       #where:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v0, "content://drm/video"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 88
    .local v1, uri2:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_1

    .line 108
    .end local v1           #uri2:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    :cond_5
    const-string v0, "DrmMetaData"

    const-string v4, "query failed"

    invoke-static {v0, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 111
    .end local v2           #proj:[Ljava/lang/String;
    .end local v9           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 113
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "DrmMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 100
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v9       #scheme:Ljava/lang/String;
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public prepare()V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mIsReady:Z

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/htc/videowidget/videoview/utilities/metadata/DrmMetaData;->queryFromDatabase(Landroid/content/Context;Landroid/net/Uri;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mIsReady:Z

    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    invoke-interface {v0, p0}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;->onPrepared(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V

    .line 49
    :cond_0
    return-void
.end method
