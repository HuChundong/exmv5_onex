.class public Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;
.super Landroid/os/AsyncTask;
.source "ThumbNailDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "imageView"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    const-string v0, "ThumbNailTask"

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mUri:Landroid/net/Uri;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method private downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    .line 107
    const-string v9, "Android"

    invoke-static {v9}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    .line 108
    .local v1, client:Landroid/net/http/AndroidHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 112
    .local v4, getRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 113
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 114
    .local v7, statusCode:I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_2

    .line 116
    const-string v9, "ThumbNailTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", while Downloading ThumbNail from = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_0
    move-object v0, v8

    .line 154
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :cond_1
    :goto_0
    return-object v0

    .line 120
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #statusCode:I
    :cond_2
    :try_start_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 121
    .local v3, entity:Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_6

    .line 123
    const/4 v5, 0x0

    .line 126
    .local v5, inputStream:Ljava/io/InputStream;
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 127
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 133
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    .line 135
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 137
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 149
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 133
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v9

    if-eqz v5, :cond_4

    .line 135
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 137
    :cond_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :catch_0
    move-exception v2

    .line 144
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 145
    const-string v9, "ThumbNailTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while Downloading ThumbNail from = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    if-eqz v1, :cond_5

    .line 151
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    :goto_1
    move-object v0, v8

    .line 154
    goto :goto_0

    .line 149
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #statusCode:I
    :cond_6
    if-eqz v1, :cond_5

    .line 151
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 149
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :catchall_1
    move-exception v8

    if-eqz v1, :cond_7

    .line 151
    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_7
    throw v8
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "params"

    .prologue
    .line 40
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mUri:Landroid/net/Uri;

    .line 41
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    if-eqz p1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 67
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    const-string v1, "ThumbNailTask"

    const-string v2, "Set Remote ThumbNail Successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "ThumbNailTask"

    const-string v2, "ImageView is Null. Remain the Default ThumbNail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .restart local v0       #imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_5

    .line 84
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 86
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 88
    const-string v1, "ThumbNailTask"

    const-string v2, "Set Local ThumbNail Successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    const v1, 0x20800ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    const-string v1, "ThumbNailTask"

    const-string v2, "Set Default ThumbNail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_5
    const-string v1, "ThumbNailTask"

    const-string v2, "ImageView is Null. Remain the Default ThumbNail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoDMC/ThumbNailDownloadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
