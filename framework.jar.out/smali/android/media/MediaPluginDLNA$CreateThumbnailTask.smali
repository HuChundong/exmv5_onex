.class Landroid/media/MediaPluginDLNA$CreateThumbnailTask;
.super Landroid/os/AsyncTask;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPluginDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mmr:Landroid/media/MediaMetadataRetriever;

.field final synthetic this$0:Landroid/media/MediaPluginDLNA;


# direct methods
.method constructor <init>(Landroid/media/MediaPluginDLNA;)V
    .locals 1
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 945
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 944
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 948
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[CreateThumbnailTask]doInBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    #calls: Landroid/media/MediaPluginDLNA;->isStreamingPath(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Landroid/media/MediaPluginDLNA;->access$1900(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 954
    :goto_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    iget-object v2, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPluginDLNA;->setDLNAThumbnail(Landroid/graphics/Bitmap;)V

    .line 955
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 966
    :goto_1
    return-object v5

    .line 953
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 958
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1, v5}, Landroid/media/MediaPluginDLNA;->setDLNAThumbnail(Landroid/graphics/Bitmap;)V

    .line 959
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .line 960
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 962
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1, v5}, Landroid/media/MediaPluginDLNA;->setDLNAThumbnail(Landroid/graphics/Bitmap;)V

    .line 963
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 988
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[CreateThumbnailTask]onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 990
    iget-object v0, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 991
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 944
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    const/16 v4, 0x2001

    const/4 v3, 0x0

    .line 971
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[CreateThumbnailTask]onPostExecute"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$2000(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 974
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$2000(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 975
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$2000(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 976
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    const/4 v2, 0x0

    #setter for: Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Landroid/media/MediaPluginDLNA;->access$2002(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 984
    :cond_1
    :goto_0
    return-void

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 982
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v1

    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v1, v4, v3}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v2

    invoke-interface {v2, v4, v3}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 981
    throw v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 982
    :cond_3
    iget-object v1, p0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->this$0:Landroid/media/MediaPluginDLNA;

    #getter for: Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;
    invoke-static {v1}, Landroid/media/MediaPluginDLNA;->access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;

    move-result-object v1

    goto :goto_1
.end method
