.class public Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FastScrollerCallBackImp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;,
        Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FastScrollerCallBackImp"


# instance fields
.field private mAdapter:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDrawIRT:Ljava/lang/Runnable;

.field private mFastScroller:Lcom/htc/widget/AbsFastScroller;

.field private mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

.field private mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

.field private mPoolSize:I

.field private mRenderOrder:I

.field private mResourcePool:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 4
    .parameter
    .parameter "gridView"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4441
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4431
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 4432
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mAdapter:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;

    .line 4433
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 4434
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mFastScroller:Lcom/htc/widget/AbsFastScroller;

    .line 4436
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I

    .line 4437
    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;

    .line 4438
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    .line 4439
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mCanvas:Landroid/graphics/Canvas;

    .line 4946
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;

    invoke-direct {v0, p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$1;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mDrawIRT:Ljava/lang/Runnable;

    .line 4442
    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 4443
    new-instance v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;

    invoke-direct {v0, p0, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/widget/gridview/GridView$1;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mAdapter:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;

    .line 4444
    new-instance v0, Lcom/htc/sunnyCore/RenderThreadHandler;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1900(Lcom/htc/sunnyCore/widget/gridview/GridView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/widget/AbsFastScroller;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/sunnyCore/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunnyCore/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    .line 4445
    return-void
.end method

.method static synthetic access$2902(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4427
    iput p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    return p1
.end method

.method static synthetic access$3000(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4427
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4427
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)Lcom/htc/widget/AbsFastScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4427
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mFastScroller:Lcom/htc/widget/AbsFastScroller;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4427
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/widget/AbsFastScroller;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4427
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->setFastScroller(Lcom/htc/widget/AbsFastScroller;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/IMediaList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4427
    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    return-void
.end method

.method private setFastScroller(Lcom/htc/widget/AbsFastScroller;)V
    .locals 0
    .parameter "fastScroller"

    .prologue
    .line 4452
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mFastScroller:Lcom/htc/widget/AbsFastScroller;

    .line 4453
    return-void
.end method

.method private setMediaList(Lcom/htc/sunnyCore/IMediaList;)V
    .locals 1
    .parameter "mediaList"

    .prologue
    .line 4448
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mAdapter:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 4449
    return-void
.end method


# virtual methods
.method public computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 4589
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 4617
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v8, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 4618
    .local v1, firstIdx:I
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v8, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 4619
    .local v2, itemCount:I
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v4, v8, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 4621
    .local v4, numRows:I
    if-gtz v4, :cond_1

    .line 4622
    const-string v8, "FastScrollerCallBackImp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FastScrollerCallBackImp][computeHorizontalScrollOffset] divide unexpected number. FirstIdx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ItemCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numColumns "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    :cond_0
    :goto_0
    return v7

    .line 4626
    :cond_1
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    .line 4627
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v8, v8, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 4628
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v3

    .line 4629
    .local v3, itemWidth:I
    div-int v6, v1, v4

    .line 4631
    .local v6, whichColumn:I
    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v8, v8, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v8, v3

    mul-int/2addr v8, v6

    iget-object v9, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I
    invoke-static {v9}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2000(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v9

    add-int v5, v8, v9

    .line 4637
    .local v5, prePosistion:I
    iget v8, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    sub-int v8, v5, v8

    if-ltz v8, :cond_0

    .line 4638
    iget v7, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->x:I

    sub-int v7, v5, v7

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 10

    .prologue
    .line 4649
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    .line 4650
    .local v2, firstIdx:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v5, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    .line 4651
    .local v5, numRows:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 4653
    .local v3, itemCount:I
    if-gtz v5, :cond_0

    .line 4654
    const-string v7, "FastScrollerCallBackImp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[FastScrollerCallBackImp][computeHorizontalScrollRange] divide unexpected number. FirstIdx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ItemCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " numColumns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4656
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    .line 4679
    :goto_0
    return v7

    .line 4659
    :cond_0
    add-int v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    div-int v1, v7, v5

    .line 4660
    .local v1, columnCount:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;

    .line 4661
    .local v0, cell:Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView$Cell;->width()I

    move-result v4

    .line 4663
    .local v4, itemWidth:I
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    add-int/2addr v7, v4

    mul-int/2addr v7, v1

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I
    invoke-static {v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2100(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I
    invoke-static {v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2200(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v8

    add-int v6, v7, v8

    .line 4665
    .local v6, totalWidth:I
    if-lez v1, :cond_1

    .line 4666
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mVerticalSpacing:I

    sub-int/2addr v6, v7

    .line 4675
    :cond_1
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    if-le v6, v7, :cond_2

    .line 4676
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    sub-int v7, v6, v7

    goto :goto_0

    .line 4679
    :cond_2
    iget-object v7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGLViewWidth:I

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 4474
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 4508
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 4543
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    .line 4544
    .local v1, totalItemCount:I
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget-object v4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v4, v4, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 4545
    .local v2, visibleItemCount:I
    sub-int v0, v1, v2

    .line 4546
    .local v0, result:I
    if-lez v0, :cond_0

    .line 4549
    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy(Lcom/htc/sunnyCore/SceneNode;)V
    .locals 4
    .parameter "parentSceneNode"

    .prologue
    .line 4456
    invoke-static {}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4457
    const-string v2, "FastScrollerCallBackImp"

    const-string v3, "[FastScrollerCallBackImp][destroy]"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4459
    :cond_0
    const/4 v0, 0x0

    .local v0, key:I
    :goto_0
    iget v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I

    if-ge v0, v2, :cond_2

    .line 4460
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;

    .line 4461
    .local v1, res:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    if-eqz v1, :cond_1

    .line 4462
    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->free()V

    .line 4459
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4465
    .end local v1           #res:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    :cond_2
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4466
    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v2}, Lcom/htc/sunnyCore/RenderThreadHandler;->release()V

    .line 4467
    return-void
.end method

.method public draw(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 22
    .parameter "d"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4731
    if-nez p1, :cond_0

    .line 4732
    const-string v3, "FastScrollerCallBackImp"

    const-string v9, "[FastScrollerCallBackImp][draw] drawable is null!"

    invoke-static {v3, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4793
    :goto_0
    return-void

    .line 4735
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I

    if-le v3, v9, :cond_1

    .line 4736
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I

    .line 4745
    :cond_1
    sub-int v7, p4, p2

    .line 4746
    .local v7, width:I
    sub-int v6, p5, p3

    .line 4747
    .local v6, height:I
    const/16 v20, 0x1

    .line 4748
    .local v20, needReset:Z
    const/4 v5, 0x0

    .line 4749
    .local v5, texture:Lcom/htc/sunnyCore/Texture;
    const/4 v4, 0x0

    .line 4750
    .local v4, sprite:Lcom/htc/sunnyCore/Sprite;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;

    .line 4751
    .local v2, res:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    if-nez v2, :cond_4

    .line 4752
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v5

    .line 4753
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v4

    .line 4754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 4755
    new-instance v2, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;

    .end local v2           #res:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;IILandroid/graphics/drawable/Drawable;)V

    .line 4756
    .restart local v2       #res:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    invoke-virtual {v3, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4766
    :cond_2
    :goto_1
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    .line 4767
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 4768
    .local v17, bmp:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4769
    .local v18, c:Landroid/graphics/Canvas;
    move/from16 v0, p2

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, p3

    neg-int v9, v0

    int-to-float v9, v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4770
    invoke-virtual/range {p1 .. p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4771
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4772
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4773
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 4775
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v8

    .line 4776
    .local v8, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    int-to-float v9, v7

    int-to-float v10, v6

    neg-int v3, v7

    div-int/lit8 v3, v3, 0x2

    int-to-float v11, v3

    div-int/lit8 v3, v6, 0x2

    int-to-float v12, v3

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 4777
    const/4 v3, 0x0

    invoke-virtual {v8, v3, v5}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 4778
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    invoke-virtual {v4, v3}, Lcom/htc/sunnyCore/Sprite;->setRenderOrder(I)V

    .line 4780
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    move v13, v7

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v16}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->setResource(Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 4783
    .end local v8           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v17           #bmp:Landroid/graphics/Bitmap;
    .end local v18           #c:Landroid/graphics/Canvas;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    .line 4784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v21

    .line 4785
    .local v21, topPadding:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v19

    .line 4786
    .local v19, leftPadding:I
    add-int v3, v19, p2

    int-to-float v3, v3

    move/from16 v0, v21

    neg-int v9, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v10, v10, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerExtraPaddingTop:I

    sub-int/2addr v9, v10

    sub-int v9, v9, p3

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v9, v10}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 4791
    .end local v19           #leftPadding:I
    .end local v21           #topPadding:I
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 4792
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    goto/16 :goto_0

    .line 4759
    :cond_4
    iget-object v5, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 4760
    iget-object v4, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 4761
    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mHeight:I

    if-ne v3, v6, :cond_2

    iget v3, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mWidth:I

    if-ne v3, v7, :cond_2

    iget-object v3, v2, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_2

    .line 4763
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 4789
    :cond_5
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    neg-int v9, v0

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v9, v10}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    goto :goto_2
.end method

.method public draw(Ljava/lang/String;IIIILandroid/graphics/Paint;)V
    .locals 24
    .parameter "text"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "paint"

    .prologue
    .line 4797
    if-eqz p6, :cond_0

    if-nez p1, :cond_1

    .line 4798
    :cond_0
    const-string v4, "FastScrollerCallBackImp"

    const-string v10, "[FastScrollerCallBackImp][draw] paint or text is null!"

    invoke-static {v4, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4878
    :goto_0
    return-void

    .line 4801
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I

    if-le v4, v10, :cond_2

    .line 4802
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mPoolSize:I

    .line 4810
    :cond_2
    sub-int v7, p5, p3

    .line 4811
    .local v7, height:I
    sub-int v8, p4, p2

    .line 4812
    .local v8, width:I
    const/16 v21, 0x1

    .line 4813
    .local v21, needReset:Z
    const/4 v6, 0x0

    .line 4814
    .local v6, texture:Lcom/htc/sunnyCore/Texture;
    const/4 v5, 0x0

    .line 4815
    .local v5, sprite:Lcom/htc/sunnyCore/Sprite;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;

    .line 4816
    .local v3, res:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    if-nez v3, :cond_5

    .line 4817
    invoke-static {}, Lcom/htc/sunnyCore/Texture;->createTexture()Lcom/htc/sunnyCore/Texture;

    move-result-object v6

    .line 4818
    invoke-static {}, Lcom/htc/sunnyCore/Sprite;->obtain()Lcom/htc/sunnyCore/Sprite;

    move-result-object v5

    .line 4819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v4, v4, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/SceneNode;->addSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 4820
    new-instance v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;

    .end local v3           #res:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    move-object/from16 v4, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;IILjava/lang/String;Landroid/graphics/Paint;)V

    .line 4821
    .restart local v3       #res:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mResourcePool:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    invoke-virtual {v4, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4831
    :cond_3
    :goto_1
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 4832
    .local v22, textbounds:Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v4, v10, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4833
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_4

    .line 4834
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 4835
    .local v18, bmp:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4836
    .local v19, c:Landroid/graphics/Canvas;
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Rect;->left:I

    rsub-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v7, v10

    int-to-float v10, v10

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v4, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4837
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/htc/sunnyCore/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4838
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 4840
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v9

    .line 4841
    .local v9, layer:Lcom/htc/sunnyCore/Sprite$Layer;
    int-to-float v10, v8

    int-to-float v11, v7

    neg-int v4, v8

    div-int/lit8 v4, v4, 0x2

    int-to-float v12, v4

    div-int/lit8 v4, v7, 0x2

    int-to-float v13, v4

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/htc/sunnyCore/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 4842
    const/4 v4, 0x0

    invoke-virtual {v9, v4, v6}, Lcom/htc/sunnyCore/Sprite$Layer;->setTexture(ILcom/htc/sunnyCore/Texture;)V

    .line 4843
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    invoke-virtual {v5, v4}, Lcom/htc/sunnyCore/Sprite;->setRenderOrder(I)V

    .line 4845
    const/4 v15, 0x0

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    move v13, v7

    move v14, v8

    move-object/from16 v16, p1

    move-object/from16 v17, p6

    invoke-virtual/range {v10 .. v17}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->setResource(Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)V

    .line 4866
    .end local v9           #layer:Lcom/htc/sunnyCore/Sprite$Layer;
    .end local v18           #bmp:Landroid/graphics/Bitmap;
    .end local v19           #c:Landroid/graphics/Canvas;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v4, v4, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_6

    .line 4867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v23

    .line 4868
    .local v23, topPadding:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v20

    .line 4869
    .local v20, leftPadding:I
    add-int v4, v20, p2

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v10

    int-to-float v4, v4

    move/from16 v0, v23

    neg-int v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v11, v11, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerExtraPaddingTop:I

    sub-int/2addr v10, v11

    sub-int v10, v10, p3

    add-int/2addr v10, v7

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v5, v4, v10, v11}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    .line 4876
    .end local v20           #leftPadding:I
    .end local v23           #topPadding:I
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/htc/sunnyCore/Sprite;->setVisibility(Z)V

    .line 4877
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mRenderOrder:I

    goto/16 :goto_0

    .line 4824
    .end local v22           #textbounds:Landroid/graphics/Rect;
    :cond_5
    iget-object v6, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 4825
    iget-object v5, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 4826
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    iget v4, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mHeight:I

    if-ne v4, v7, :cond_3

    iget v4, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mWidth:I

    if-ne v4, v8, :cond_3

    iget-object v4, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSection:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSection:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p6

    if-ne v4, v0, :cond_3

    .line 4828
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 4873
    .restart local v22       #textbounds:Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int v4, v4, p2

    int-to-float v4, v4

    move/from16 v0, p3

    neg-int v10, v0

    add-int/2addr v10, v7

    move-object/from16 v0, v22

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v5, v4, v10, v11}, Lcom/htc/sunnyCore/Sprite;->setPosition(FFF)V

    goto :goto_2
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 4882
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mAdapter:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$AdapterWrapper;

    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 4896
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 4901
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4902
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumColumn:I

    .line 4905
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mNumRow:I

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 4887
    const/4 v0, 0x0

    .line 4888
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-eqz v1, :cond_0

    .line 4889
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v0

    .line 4891
    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4911
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mHeight:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2300(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v0

    .line 4912
    .local v0, h:I
    if-ge v0, v2, :cond_1

    .line 4918
    .end local v0           #h:I
    :cond_0
    :goto_0
    return v0

    .line 4914
    .restart local v0       #h:I
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 4915
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingTop:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2400(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerExtraPaddingTop:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingBottom:I
    invoke-static {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2500(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4924
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mWidth:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2600(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v0

    .line 4925
    .local v0, w:I
    if-ge v0, v2, :cond_1

    .line 4931
    .end local v0           #w:I
    :cond_0
    :goto_0
    return v0

    .line 4927
    .restart local v0       #w:I
    :cond_1
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 4928
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingLeft:I
    invoke-static {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2700(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mPaddingRight:I
    invoke-static {v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$2800(Lcom/htc/sunnyCore/widget/gridview/GridView;)I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 4937
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mDrawIRT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4938
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mDrawIRT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    .line 4939
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 4943
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->invalidate()V

    .line 4944
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 4969
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 4974
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunnyCore/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 4975
    const/4 v0, 0x1

    return v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 4980
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mHandler:Lcom/htc/sunnyCore/RenderThreadHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4981
    const/4 v0, 0x1

    return v0
.end method

.method public setSelectionInt(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 4986
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mIgnoreSetSelection:Z
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$3400(Lcom/htc/sunnyCore/widget/gridview/GridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->isEnableSkipSetSelection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4987
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->mGridView:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setSelection(I)V

    .line 4994
    :goto_0
    return-void

    .line 4990
    :cond_1
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #getter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mAbsFastScroller:Lcom/htc/widget/AbsFastScroller;
    invoke-static {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$3500(Lcom/htc/sunnyCore/widget/gridview/GridView;)Lcom/htc/widget/AbsFastScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastIdx:I

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFirstIdx:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mListItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/AbsFastScroller;->onScroll(Lcom/htc/widget/AbsFastScroller$AbstractViewCallback;III)V

    .line 4991
    invoke-virtual {p0}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->invalidate()V

    .line 4992
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    #setter for: Lcom/htc/sunnyCore/widget/gridview/GridView;->mLastestSelection:I
    invoke-static {v0, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$3602(Lcom/htc/sunnyCore/widget/gridview/GridView;I)I

    goto :goto_0
.end method
