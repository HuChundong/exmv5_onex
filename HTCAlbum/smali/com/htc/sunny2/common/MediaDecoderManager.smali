.class public Lcom/htc/sunny2/common/MediaDecoderManager;
.super Ljava/lang/Object;
.source "MediaDecoderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;,
        Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_PRIORITY:I

.field private final FIRST_VIDEO_DECODE_PRIORITY:I

.field private mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

.field private mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

.field private mRaisePriorityOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/sunny2/common/MediaDecoderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    .line 18
    iput-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z

    .line 22
    iput v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->DEFAULT_PRIORITY:I

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->FIRST_VIDEO_DECODE_PRIORITY:I

    .line 26
    new-instance v0, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;-><init>(Lcom/htc/sunny2/common/MediaDecoderManager;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    .line 27
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->setPriority(I)V

    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/common/MediaDecoderManager;Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/sunny2/common/MediaDecoderManager;->onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny2/common/MediaDecoderManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/sunny2/common/MediaDecoderManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z

    return p1
.end method

.method private onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 3
    .parameter "mediaDecodeItem"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

    .line 75
    .local v0, mediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 76
    invoke-interface {v0, p1}, Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;->onMediaDecodeEnd(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v1, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    const-string v2, "MediaUpdateListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V
    .locals 1
    .parameter "mediaDecodeItem"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->addTask(Lcom/htc/sunny2/common/MediaDecodeItem;)V

    .line 52
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->getCount()I

    move-result v0

    .line 92
    :cond_0
    return v0
.end method

.method public raisePriorityOnce()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    const-string v1, "MediaUpdateListener raisePriorityOnce"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mRaisePriorityOnce:Z

    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->setPriority(I)V

    .line 35
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->cancel()V

    .line 61
    iput-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

    .line 62
    iput-object v1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    .line 63
    return-void
.end method

.method public remvoeAllTask()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->removeAllTasks()V

    .line 57
    :cond_0
    return-void
.end method

.method public requestResumeTask(Z)V
    .locals 1
    .parameter "isResume"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->requestResumeTask(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method public runMediaDecoder()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->start()V

    .line 47
    :cond_0
    return-void
.end method

.method public setMediaUpdateListener(Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;)V
    .locals 2
    .parameter "mediaUpdateListener"

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    sget-object v0, Lcom/htc/sunny2/common/MediaDecoderManager;->TAG:Ljava/lang/String;

    const-string v1, "MediaUpdateListener set to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaUpdateListener:Lcom/htc/sunny2/common/MediaDecoderManager$IMediaUpdateListener;

    .line 42
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    if-gt p1, p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/sunny2/common/MediaDecoderManager;->mMediaDecoder:Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/common/MediaDecoderManager$MediaDecoder;->setVisibleRange(II)V

    .line 71
    :cond_0
    return-void
.end method
