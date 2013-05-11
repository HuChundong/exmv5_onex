.class public Lcom/htc/album/PaintManager/FileSerializeDAO;
.super Lcom/htc/painting/engine/AbsSerializeDAO;
.source "FileSerializeDAO.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/album/PaintManager/FileSerializeDAO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/FileSerializeDAO;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/painting/engine/AbsSerializeDAO;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/FileSerializeDAO;->mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;

    return-void
.end method

.method public static getFromFileCache(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 10
    .parameter "context"
    .parameter "nIndex"

    .prologue
    .line 151
    sget-object v6, Lcom/htc/album/PaintManager/FileSerializeDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][FileSerializeDAO][getFromFileCache]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 155
    .local v4, ojbInputStream:Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 160
    .local v3, object:Ljava/lang/Object;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/htc/album/PaintManager/HtcPaintManager;->FOLDER_PATH_PAINTDATACACHE:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    if-eqz v2, :cond_0

    .line 162
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4           #ojbInputStream:Ljava/io/ObjectInputStream;
    .local v5, ojbInputStream:Ljava/io/ObjectInputStream;
    move-object v4, v5

    .line 164
    .end local v5           #ojbInputStream:Ljava/io/ObjectInputStream;
    .restart local v4       #ojbInputStream:Ljava/io/ObjectInputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 165
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .end local v3           #object:Ljava/lang/Object;
    :cond_1
    move-object v1, v2

    .line 171
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    :goto_0
    if-eqz v4, :cond_2

    .line 175
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 180
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 184
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 190
    :cond_3
    :goto_2
    return-object v3

    .line 167
    .restart local v3       #object:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    sget-object v6, Lcom/htc/album/PaintManager/FileSerializeDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][FileSerializeDAO][getFromFileCache]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #object:Ljava/lang/Object;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 186
    :catch_2
    move-exception v6

    goto :goto_2

    .line 167
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #object:Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static loadFromFileCache()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public static putToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "bitmap"
    .parameter "szFileName"
    .parameter "compressFormat"
    .parameter "szFileExtension"
    .parameter "bIsRecycle"

    .prologue
    const/4 v8, 0x1

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, bResult:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const/4 v2, 0x0

    .line 206
    .local v2, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->FOLDER_PATH_PAINTCACHE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, path:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .local v3, outStream:Ljava/io/FileOutputStream;
    const/16 v5, 0x64

    :try_start_1
    invoke-virtual {p0, p2, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 219
    if-eqz v3, :cond_4

    .line 223
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 224
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 225
    if-ne v8, p4, :cond_2

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 233
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 229
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 233
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 212
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #path:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/htc/album/PaintManager/FileSerializeDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FileSerializeDAO][putToFileCache]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    if-eqz v2, :cond_0

    .line 223
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 224
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 225
    if-ne v8, p4, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 229
    :catch_2
    move-exception v1

    .line 232
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_3

    .line 223
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 224
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 225
    if-ne v8, p4, :cond_3

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 233
    :cond_3
    :goto_3
    throw v5

    .line 229
    :catch_3
    move-exception v1

    .line 232
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 219
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 212
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :cond_4
    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public static putToFileCacheList(ILjava/lang/Object;)V
    .locals 9
    .parameter "nIndex"
    .parameter "obj"

    .prologue
    .line 103
    sget-object v5, Lcom/htc/album/PaintManager/FileSerializeDAO;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][FileSerializeDAO][putToFileCacheList]: Begin"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x0

    .line 109
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 112
    .local v3, objOutputStream:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/htc/album/PaintManager/HtcPaintManager;->FOLDER_PATH_PAINTDATACACHE:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v1           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 114
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v3           #objOutputStream:Ljava/io/ObjectOutputStream;
    .local v4, objOutputStream:Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 116
    .end local v4           #objOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #objOutputStream:Ljava/io/ObjectOutputStream;
    :cond_2
    if-eqz v3, :cond_3

    .line 117
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    move-object v1, v2

    .line 124
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v1       #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v3, :cond_4

    .line 128
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 129
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :cond_4
    :goto_2
    if-eqz v1, :cond_0

    .line 139
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 140
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v5

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    :goto_3
    sget-object v5, Lcom/htc/album/PaintManager/FileSerializeDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][FileSerializeDAO][save]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_2

    .line 119
    .end local v1           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v1       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public delete(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/PaintManager/FileSerializeDAO;->mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/htc/album/PaintManager/FileSerializeDAO;->mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;

    invoke-interface {v0, p1}, Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;->reRouteStrokeDelete(I)V

    goto :goto_0
.end method

.method public deleteAll()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method protected initRepository(Ljava/lang/String;)Z
    .locals 7
    .parameter "szFolderPath"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 87
    .local v0, bResult:Z
    move-object v1, p1

    .line 88
    .local v1, dirName:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, newFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 97
    .end local v3           #newFile:Ljava/io/File;
    :cond_0
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/album/PaintManager/FileSerializeDAO;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][FileSerializeDAO][initRepository]: failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initialize()Z
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 33
    .local v0, bResult:Z
    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintManager;->FOLDER_PATH_STROKE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/album/PaintManager/FileSerializeDAO;->initRepository(Ljava/lang/String;)Z

    .line 38
    sget-object v1, Lcom/htc/album/PaintManager/HtcPaintManager;->FOLDER_PATH_PAINTCACHE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/album/PaintManager/FileSerializeDAO;->initRepository(Ljava/lang/String;)Z

    .line 41
    return v0
.end method

.method public load(I)[B
    .locals 2
    .parameter "drawerGroupId"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, byteData:[B
    iget-object v1, p0, Lcom/htc/album/PaintManager/FileSerializeDAO;->mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;

    if-nez v1, :cond_0

    .line 69
    .end local v0           #byteData:[B
    :goto_0
    return-object v0

    .restart local v0       #byteData:[B
    :cond_0
    iget-object v1, p0, Lcom/htc/album/PaintManager/FileSerializeDAO;->mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;

    invoke-interface {v1, p1}, Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;->reRouteStrokeLoad(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public save(I[B)V
    .locals 2
    .parameter "drawerGroupId"
    .parameter "byteArray"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/htc/album/PaintManager/FileSerializeDAO;->mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;

    if-nez v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    .local v0, byteArrayCloned:[B
    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #byteArrayCloned:[B
    check-cast v0, [B

    .line 59
    .restart local v0       #byteArrayCloned:[B
    :cond_1
    iget-object v1, p0, Lcom/htc/album/PaintManager/FileSerializeDAO;->mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;

    invoke-interface {v1, p1, v0}, Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;->reRouteStrokeSave(I[B)V

    goto :goto_0
.end method

.method public setReroute(Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;)V
    .locals 0
    .parameter "fileDAO"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/album/PaintManager/FileSerializeDAO;->mPaintFileDAO:Lcom/htc/album/PaintManager/Interface/IPaintFileDAO;

    .line 46
    return-void
.end method
