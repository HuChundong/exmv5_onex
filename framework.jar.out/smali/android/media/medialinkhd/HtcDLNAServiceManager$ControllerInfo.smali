.class public final Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/medialinkhd/HtcDLNAServiceManager;
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

    .line 1100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    .line 1111
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1116
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1121
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1126
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1131
    const-string v0, ""

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1137
    iput-wide v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1141
    iput-wide v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1148
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1159
    const/4 v0, 0x6

    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return-void
.end method

.method static synthetic access$1502(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return p1
.end method

.method static synthetic access$1600(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1100
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method static synthetic access$1602(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return p1
.end method

.method static synthetic access$1702(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1100
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method static synthetic access$1802(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return p1
.end method

.method static synthetic access$1902(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1100
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method static synthetic access$2002(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return p1
.end method

.method static synthetic access$2102(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide p1
.end method

.method static synthetic access$2202(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1100
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    return-wide p1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getCurContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1220
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 1253
    iget-wide v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1274
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    return v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1342
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 1407
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mAlbum:Ljava/lang/String;

    .line 1408
    return-void
.end method

.method public setArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 1430
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mArtist:Ljava/lang/String;

    .line 1431
    return-void
.end method

.method public setCurContentID(Ljava/lang/String;)V
    .locals 0
    .parameter "aCurContentID"

    .prologue
    .line 1384
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->curContentID:Ljava/lang/String;

    .line 1385
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 1464
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDate:Ljava/lang/String;

    .line 1465
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 1231
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I

    .line 1232
    return-void
.end method

.method public setIndex(J)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1242
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 1243
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "mute"

    .prologue
    .line 1296
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mMute:Z

    .line 1297
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1210
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1211
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1285
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I

    .line 1286
    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererName"

    .prologue
    .line 1363
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererName:Ljava/lang/String;

    .line 1364
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .parameter "repeat"

    .prologue
    .line 1318
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 1319
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0
    .parameter "shuffle"

    .prologue
    .line 1307
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 1308
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 1475
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mThumbnailPath:Ljava/lang/String;

    .line 1476
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1453
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTitle:Ljava/lang/String;

    .line 1454
    return-void
.end method

.method public setTotal(J)V
    .locals 0
    .parameter "total"

    .prologue
    .line 1264
    iput-wide p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 1265
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 1330
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1331
    return-void
.end method
