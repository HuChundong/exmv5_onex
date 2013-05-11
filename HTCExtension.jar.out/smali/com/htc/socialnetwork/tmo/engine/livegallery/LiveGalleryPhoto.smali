.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;
.super Ljava/lang/Object;
.source "LiveGalleryPhoto.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mPhotoPath:Ljava/lang/String;

.field private mPhotoUri:Ljava/lang/String;

.field private mPublishTime:J

.field private mThumbnailPath:Ljava/lang/String;

.field private mThumbnailUri:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public GetPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public GetThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetThumbnailUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailUri:Ljava/lang/String;

    return-object v0
.end method

.method public GetTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public SetDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mDescription:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public SetPhotoPath(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoPath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public SetPhotoUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoUri:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public SetThumbnailUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailUri:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public SetThumnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailPath:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public SetTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mTitle:Ljava/lang/String;

    .line 38
    return-void
.end method
