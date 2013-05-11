.class Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;
.super Ljava/lang/Thread;
.source "StreamMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 37
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 39
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 42
    .local v2, mMediaRetriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;->checkEmpty(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;->access$000(Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    .line 51
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;->checkEmpty(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;->access$000(Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    .line 53
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;->checkEmpty(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;->access$000(Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDate:Ljava/lang/String;

    .line 55
    const-string v3, ""

    .line 56
    .local v3, metadata:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 58
    const-string v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iput-boolean v7, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasAudio:Z

    .line 64
    :cond_0
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 66
    const-string v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 68
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iput-boolean v7, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasVideo:Z

    .line 74
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTracks:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    const/16 v5, 0x13

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoHeight:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoWidth:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 101
    :goto_3
    :try_start_4
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDuration:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 110
    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    const/16 v5, 0x14

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mBitRate:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 117
    :goto_5
    const-string v4, "StreamMetaData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iput-boolean v7, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mIsReady:Z

    .line 120
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 121
    const/4 v2, 0x0

    .line 123
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    if-eqz v4, :cond_2

    .line 125
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    invoke-interface {v4, v5}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;->onPrepared(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V

    .line 128
    .end local v2           #mMediaRetriever:Landroid/media/MediaMetadataRetriever;
    .end local v3           #metadata:Ljava/lang/String;
    :cond_2
    return-void

    .line 44
    .restart local v2       #mMediaRetriever:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v1

    .line 46
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "StreamMetaData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData$DownloadThread;->this$0:Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v6, v6, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v3       #metadata:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "StreamMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 85
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 87
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "StreamMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 94
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 96
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "StreamMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 103
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "StreamMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 112
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v0

    .line 114
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "StreamMetaData"

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_5
.end method
