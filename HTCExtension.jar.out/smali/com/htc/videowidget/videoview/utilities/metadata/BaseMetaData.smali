.class public Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;
.super Ljava/lang/Object;
.source "BaseMetaData.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;


# static fields
.field private static final TAG:Ljava/lang/String; = "MetaData"


# instance fields
.field protected mBitRate:I

.field protected mContext:Landroid/content/Context;

.field protected mDate:Ljava/lang/String;

.field protected mDuration:I

.field protected mFileSize:I

.field protected mHasAudio:Z

.field protected mHasVideo:Z

.field protected mIsReady:Z

.field protected mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

.field protected mMimeType:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mTracks:I

.field protected mUri:Landroid/net/Uri;

.field protected mVideoHeight:I

.field protected mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    .line 41
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p2}, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->init(Landroid/net/Uri;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getBitRate()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mBitRate:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDuration:I

    return v0
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mFileSize:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTracks:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoWidth:I

    return v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasAudio:Z

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasVideo:Z

    return v0
.end method

.method protected init(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mUri:Landroid/net/Uri;

    .line 48
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mPath:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDate:Ljava/lang/String;

    .line 52
    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mIsReady:Z

    .line 53
    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasAudio:Z

    .line 54
    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasVideo:Z

    .line 55
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mFileSize:I

    .line 56
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTracks:I

    .line 57
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoHeight:I

    .line 58
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoWidth:I

    .line 59
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDuration:I

    .line 60
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mBitRate:I

    .line 61
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mIsReady:Z

    return v0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public setListener(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mListener:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData$IMetaDataListener;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    const-string v0, ""

    .line 136
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MimeType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDate:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Date ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Video =("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BitRate ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mBitRate:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kbps ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Duration ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDuration:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " second ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasVideo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hasAudio ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mHasAudio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NUM_TRACKS ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/BaseMetaData;->mTracks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "MetaData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MetaHandler r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-object v0
.end method
