.class public final Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/medialinkhd/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field private curContentID:Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mIndex:J

.field private mMute:Z

.field private mPlayState:I

.field private mPosition:I

.field private mRendererId:Ljava/lang/String;

.field private mRendererName:Ljava/lang/String;

.field private mRepeat:I

.field private mShuffle:Z

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTotal:J

.field private mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 1103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    .line 1114
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1119
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1124
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1129
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1134
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1140
    iput-wide v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1144
    iput-wide v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1162
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return-void
.end method

.method static synthetic access$1502(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1103
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return p1
.end method

.method static synthetic access$1702(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1103
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return p1
.end method

.method static synthetic access$1902(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1103
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return p1
.end method

.method static synthetic access$2102(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    iput-wide p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    iput-wide p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    return-wide p1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1223
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 1256
    iget-wide v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1345
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1411
    return-void
.end method

.method public setArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1446
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .parameter "aCurContentID"

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 1388
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 1480
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1234
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    .line 1235
    return-void
.end method

.method public setIndex(J)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1245
    iput-wide p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1246
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 1299
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 1300
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1213
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1214
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1288
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1289
    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererName"

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1367
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .parameter "repeat"

    .prologue
    .line 1321
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 1322
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0
    .parameter "shuffle"

    .prologue
    .line 1310
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 1311
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1491
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1469
    return-void
.end method

.method public setTotal(J)V
    .locals 0
    .parameter "total"

    .prologue
    .line 1267
    iput-wide p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1268
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 1333
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1334
    return-void
.end method
