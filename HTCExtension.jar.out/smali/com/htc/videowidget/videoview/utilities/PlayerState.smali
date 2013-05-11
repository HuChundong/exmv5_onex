.class public Lcom/htc/videowidget/videoview/utilities/PlayerState;
.super Ljava/lang/Object;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;
    }
.end annotation


# static fields
.field private static final FUSE_PATH:Ljava/lang/String; = "/data/DxDrm/fuse"

.field private static final TAG:Ljava/lang/String; = "PlayerState"


# instance fields
.field private mAudioSessionId:I

.field private mClipType:I

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDuration:I

.field private mFd:Landroid/content/res/AssetFileDescriptor;

.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIs3D:Z

.field private mIsLiveStreaming:Z

.field private mIsOMADRMContent:Z

.field private mIsPlayReadyDRMContent:Z

.field private mIsSeekable:Z

.field private mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

.field private mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

.field private mMetaDataListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

.field private mProtocolType:I

.field private mSeeking:Z

.field private mSrtFd:Landroid/content/res/AssetFileDescriptor;

.field private mState:I

.field private mStateBeforeSeekTo:I

.field private mStreaming:Z

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:D

.field private mVideoSpeed:I

.field private mVideoWidth:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .parameter "context"
    .parameter "fd"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mClipType:I

    .line 23
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    .line 24
    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mState:I

    .line 31
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStateBeforeSeekTo:I

    .line 43
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    .line 46
    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoSpeed:I

    .line 526
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;-><init>(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaDataListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    .line 66
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0, p2, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->init(Landroid/content/res/AssetFileDescriptor;Landroid/content/res/AssetFileDescriptor;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .parameter "context"
    .parameter "fd"
    .parameter "srtfd"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mClipType:I

    .line 23
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    .line 24
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mState:I

    .line 31
    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStateBeforeSeekTo:I

    .line 43
    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    .line 46
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoSpeed:I

    .line 526
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;-><init>(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaDataListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    .line 71
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mContext:Landroid/content/Context;

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->init(Landroid/content/res/AssetFileDescriptor;Landroid/content/res/AssetFileDescriptor;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mClipType:I

    .line 23
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    .line 24
    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mState:I

    .line 31
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStateBeforeSeekTo:I

    .line 43
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    .line 46
    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoSpeed:I

    .line 526
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;-><init>(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaDataListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    .line 57
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0, p2, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->init(Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, type:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mClipType:I

    .line 23
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    .line 24
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mState:I

    .line 31
    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStateBeforeSeekTo:I

    .line 43
    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    .line 46
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoSpeed:I

    .line 526
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/PlayerState$1;-><init>(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaDataListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    .line 61
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0, p2, p3}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->init(Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/PlayerState;)Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    return-object v0
.end method

.method public static getStatusString(I)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNDEFINED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, d:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 550
    :goto_0
    return-object v0

    .line 541
    :pswitch_0
    const-string v0, "STATUS_STOPPED"

    goto :goto_0

    .line 542
    :pswitch_1
    const-string v0, "STATE_PREPARED"

    goto :goto_0

    .line 543
    :pswitch_2
    const-string v0, "STATE_PLAYING"

    goto :goto_0

    .line 544
    :pswitch_3
    const-string v0, "STATE_SEEKING"

    goto :goto_0

    .line 545
    :pswitch_4
    const-string v0, "STATE_PAUSED"

    goto :goto_0

    .line 546
    :pswitch_5
    const-string v0, "STATE_BUFFERING"

    goto :goto_0

    .line 547
    :pswitch_6
    const-string v0, "STATE_PLAYBACKCOMPLETED"

    goto :goto_0

    .line 548
    :pswitch_7
    const-string v0, "STATE_ERROR"

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private init(Landroid/content/res/AssetFileDescriptor;Landroid/content/res/AssetFileDescriptor;)V
    .locals 1
    .parameter "fd"
    .parameter "srtfd"

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    .line 77
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    .line 78
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mFd:Landroid/content/res/AssetFileDescriptor;

    .line 79
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mSrtFd:Landroid/content/res/AssetFileDescriptor;

    .line 80
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->resetdefault()V

    .line 81
    return-void
.end method

.method private init(Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, type:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    .line 86
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mFd:Landroid/content/res/AssetFileDescriptor;

    .line 88
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->resetdefault()V

    .line 89
    return-void
.end method

.method private resetdefault()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 92
    iput v5, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mClipType:I

    .line 93
    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mState:I

    .line 95
    iput-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStreaming:Z

    .line 96
    iput-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsOMADRMContent:Z

    .line 97
    iput-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsPlayReadyDRMContent:Z

    .line 98
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 100
    const-string v2, "rtsp"

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http"

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dtcp"

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    iput-boolean v8, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStreaming:Z

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/metadata/DrmMetaData;->isDrmUri(Landroid/net/Uri;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsOMADRMContent:Z

    .line 109
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/DxDrm/fuse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsPlayReadyDRMContent:Z

    .line 111
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setProtocal(Landroid/net/Uri;)V

    .line 114
    :cond_2
    iput-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIs3D:Z

    .line 115
    iput-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsLiveStreaming:Z

    .line 116
    iput-boolean v8, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsSeekable:Z

    .line 117
    iput-boolean v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mSeeking:Z

    .line 120
    iput-wide v6, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoWidth:D

    .line 121
    iput-wide v6, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoHeight:D

    .line 122
    iput v5, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mDuration:I

    .line 123
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    const-string v3, "x-htc-duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, strDuration:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, iDuration:I
    if-lez v0, :cond_3

    .line 134
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mDuration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0           #iDuration:I
    .end local v1           #strDuration:Ljava/lang/String;
    :cond_3
    :goto_0
    iput v5, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mCurrentPosition:I

    .line 142
    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mAudioSessionId:I

    .line 143
    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoSpeed:I

    .line 144
    return-void

    .line 137
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setProtocal(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x2

    .line 305
    iput v4, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    .line 306
    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, scheam:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, uriPath:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "dtcp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    :cond_2
    const-string v2, ".sdp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".sdp?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_4

    .line 317
    :cond_3
    iput v3, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    goto :goto_0

    .line 320
    :cond_4
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    goto :goto_0

    .line 324
    :cond_5
    const-string v2, "rtsp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    iput v3, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    goto :goto_0

    .line 328
    :cond_6
    const-string v2, "mms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 329
    iput v3, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    goto :goto_0

    .line 332
    :cond_7
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 333
    iput v5, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    goto :goto_0

    .line 336
    :cond_8
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    iput v5, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    goto :goto_0
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mAudioSessionId:I

    return v0
.end method

.method public getClipType()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mClipType:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mCurrentPosition:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mDuration:I

    return v0
.end method

.method public getFd()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mFd:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 504
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/metadata/StreamMetaData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 516
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaDataListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    invoke-interface {v0, v1}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->setListener(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    return-object v0

    .line 507
    :cond_2
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsPlayReadyDRMContent:Z

    if-eq v0, v1, :cond_0

    .line 509
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsOMADRMContent:Z

    if-ne v0, v1, :cond_3

    .line 510
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/metadata/DrmMetaData;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/metadata/DrmMetaData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    goto :goto_0

    .line 512
    :cond_3
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/metadata/LocalMetaData;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/metadata/LocalMetaData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    goto :goto_0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mProtocolType:I

    return v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStateBeforeSeekTo()I
    .locals 3

    .prologue
    .line 475
    const-string v0, "PlayerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStateBeforeSeekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStateBeforeSeekTo:I

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStateBeforeSeekTo:I

    return v0
.end method

.method public getSubtitleFd()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mSrtFd:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoHeight()D
    .locals 2

    .prologue
    .line 406
    iget-wide v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoHeight:D

    return-wide v0
.end method

.method public getVideoSpeed()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoSpeed:I

    return v0
.end method

.method public getVideoWidth()D
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoWidth:D

    return-wide v0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIs3D:Z

    return v0
.end method

.method public isLiveStreaming()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsLiveStreaming:Z

    return v0
.end method

.method public isPlayReadyDRMContent()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsPlayReadyDRMContent:Z

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsSeekable:Z

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mSeeking:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStreaming:Z

    return v0
.end method

.method public set3D()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIs3D:Z

    .line 207
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 460
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mAudioSessionId:I

    .line 461
    return-void
.end method

.method public setClipType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 278
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mClipType:I

    .line 279
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 437
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mCurrentPosition:I

    if-eq v0, p1, :cond_0

    .line 438
    const-string v0, "PlayerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mCurrentPosition:I

    .line 441
    :cond_0
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 416
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mDuration:I

    .line 417
    return-void
.end method

.method public setListener(Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    .line 524
    return-void
.end method

.method public setLiveStreaming()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsLiveStreaming:Z

    .line 226
    return-void
.end method

.method public setNotSeekable()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mIsSeekable:Z

    .line 246
    return-void
.end method

.method public setSeeking(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mSeeking:Z

    .line 179
    return-void
.end method

.method public setStateBeforeSeekTo(I)V
    .locals 3
    .parameter "mStateBeforeSeekTo"

    .prologue
    .line 479
    const-string v0, "PlayerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStateBeforeSeekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mStateBeforeSeekTo:I

    .line 481
    return-void
.end method

.method public setVideoSize(DD)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 383
    iput-wide p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoWidth:D

    .line 384
    iput-wide p3, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoHeight:D

    .line 385
    return-void
.end method

.method public setVideoSpeed(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 500
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mVideoSpeed:I

    .line 501
    return-void
.end method

.method public declared-synchronized updateState(I)V
    .locals 3
    .parameter "s"

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    const-string v0, "PlayerState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mState:I

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --->  \u001b[31m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getStatusString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001b[0m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/PlayerState;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
