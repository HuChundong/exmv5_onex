.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecodeItem"
.end annotation


# instance fields
.field private contentIdentifier:Ljava/lang/String;

.field private contentIndex:I

.field private iteratorHandle:I

.field private mHeight:I

.field private mIsScreenQuality:Z

.field private mSourceHeight:I

.field private mSourceWidth:I

.field private mWidth:I

.field private sourceType:I

.field private targetQuality:I

.field private textureHandle:Lcom/htc/sunnyCore/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method protected constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 3385
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3386
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I

    .line 3387
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;

    .line 3388
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;

    .line 3389
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->iteratorHandle:I

    .line 3390
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->sourceType:I

    .line 3391
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I

    .line 3393
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I

    .line 3394
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I

    .line 3395
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I

    .line 3396
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I

    .line 3397
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3385
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3385
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3385
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3385
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3385
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunnyCore/Texture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunnyCore/Texture;)Lcom/htc/sunnyCore/Texture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;

    return-object p1
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 3400
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I

    .line 3401
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;

    .line 3402
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunnyCore/Texture;

    .line 3403
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->iteratorHandle:I

    .line 3404
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->sourceType:I

    .line 3405
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I

    .line 3406
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I

    .line 3407
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I

    .line 3408
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I

    .line 3409
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I

    .line 3410
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z

    .line 3411
    return-void
.end method
