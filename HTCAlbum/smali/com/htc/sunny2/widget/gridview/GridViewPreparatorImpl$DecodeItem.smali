.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecodeItem"
.end annotation


# instance fields
.field protected mCacheSet:I

.field public mContentIdentifier:Ljava/lang/String;

.field public mContentIndex:I

.field public mSourceHeight:I

.field public mSourceWidth:I

.field public mSubIndex:I

.field public mTargetQuality:I

.field public mTexture:Lcom/htc/sunnyCore/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V
    .locals 3
    .parameter
    .parameter "cacheSet"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 3567
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3557
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 3558
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    .line 3559
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 3560
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 3561
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 3562
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 3563
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 3565
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mCacheSet:I

    .line 3568
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mCacheSet:I

    .line 3569
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/htc/sunny2/common/CacheItem;)V
    .locals 1
    .parameter "cacheItem"

    .prologue
    .line 3594
    iget v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 3595
    iget-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 3596
    iget v0, p1, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 3597
    iget v0, p1, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 3598
    iget v0, p1, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    .line 3599
    iget v0, p1, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 3600
    return-void
.end method

.method public getScaleType()I
    .locals 1

    .prologue
    .line 3580
    const/4 v0, 0x4

    return v0
.end method

.method public getTargetHeight()I
    .locals 1

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 3584
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    .line 3585
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    .line 3586
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 3587
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    .line 3588
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    .line 3589
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    .line 3590
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTargetQuality:I

    .line 3591
    return-void
.end method
