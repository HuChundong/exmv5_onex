.class public Lcom/htc/sunny/SunnyEngine;
.super Ljava/lang/Object;
.source "SunnyEngine.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final POWEROF2:Z

.field private static mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

.field private static mSunnyReferenceCount:I

.field private static mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private mBackgroundBitmapId:I

.field private mBackgroundBmp:Lcom/htc/sunny/SBitmap;

.field private mBackgroundNodeId:I

.field private mBackgroundSpriteId:I

.field private mBackgroundTextureId:I

.field private mBind:Z

.field private mCameraId:I

.field private mContext:Landroid/content/Context;

.field private mEnabledTranslucent:Z

.field private mEnvironmentId:I

.field private mGlobalRootNode:I

.field private mInit:Z

.field private mLocker:Ljava/lang/Object;

.field private mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRootNodeId:I

.field private mSceneId:I

.field private mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPortId:I

.field private mWindowH:I

.field private mWindowId:I

.field private mWindowW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 71
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bTranslucent"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mContext:Landroid/content/Context;

    .line 45
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 46
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 47
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 48
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    .line 49
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 50
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 51
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 52
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 53
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    .line 54
    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 56
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    .line 57
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 58
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    .line 59
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    .line 60
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mLocker:Ljava/lang/Object;

    .line 73
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    .line 76
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mContext:Landroid/content/Context;

    .line 77
    iput-boolean p2, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    .line 78
    return-void
.end method

.method public static createAlphaBitmap(Landroid/graphics/Bitmap;III)I
    .locals 8
    .parameter "bitmap"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v2, 0x0

    .line 498
    if-nez p0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v2

    .line 500
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 501
    .local v7, nWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 503
    .local v6, nHeight:I
    if-lez v7, :cond_0

    if-lez v6, :cond_0

    .line 505
    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateBitmap(I)I

    move-result v0

    .line 506
    .local v0, nBitmapId:I
    if-eqz v0, :cond_0

    .line 508
    const/4 v3, 0x0

    .line 515
    .local v3, nNewWidth:I
    move v3, v7

    .line 518
    const/4 v4, 0x0

    .line 525
    .local v4, nNewHeight:I
    move v4, v6

    move-object v1, p0

    move v5, p3

    .line 528
    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    .line 530
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_2

    .line 531
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v0

    .line 533
    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)I
    .locals 8
    .parameter "bitmap"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v1, 0x0

    .line 446
    if-nez p0, :cond_1

    move v0, v1

    .line 484
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 449
    .local v7, nWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 451
    .local v6, nHeight:I
    if-lez v7, :cond_2

    if-gtz v6, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 453
    :cond_3
    invoke-static {v1}, Lcom/htc/sunny/Sunny;->CreateBitmap(I)I

    move-result v0

    .line 454
    .local v0, nBitmapId:I
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 456
    :cond_4
    const/4 v3, 0x0

    .line 463
    .local v3, nNewWidth:I
    move v3, v7

    .line 466
    const/4 v4, 0x0

    .line 475
    .local v4, nNewHeight:I
    if-nez p3, :cond_5

    .line 476
    invoke-static {v0, p0}, Lcom/htc/sunny/Sunny;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    .line 481
    :goto_1
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    .line 482
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    :cond_5
    const v2, 0x25551

    move-object v1, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    goto :goto_1
.end method

.method public static destroyBitmap(I)V
    .locals 3
    .parameter "nBitmapId"

    .prologue
    .line 552
    if-nez p0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 555
    invoke-static {p0}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    .line 557
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isBitmapDestroyed(I)Z
    .locals 3
    .parameter "nBitmapId"

    .prologue
    const/4 v0, 0x1

    .line 541
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 544
    :cond_0
    return v0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 772
    add-int/lit8 p0, p0, -0x1

    .line 773
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 774
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 775
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 776
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 777
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 778
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private setBackgroundSize(II)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x0

    .line 837
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_0

    .line 838
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->Sprite_SetupGeometry(IIFFFFF)V

    .line 841
    :cond_0
    return-void
.end method


# virtual methods
.method public bindWindows(Landroid/view/Surface;II)Z
    .locals 3
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    .line 821
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 822
    :cond_0
    const/4 v0, 0x0

    .line 833
    :goto_0
    return v0

    .line 825
    :cond_1
    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v1, p1, p2, p3}, Lcom/htc/sunny/Sunny;->Window_BindSurface(ILandroid/view/Surface;II)Z

    .line 828
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    .line 829
    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    .line 830
    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    invoke-direct {p0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setBackgroundSize(II)V

    .line 832
    iput-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    goto :goto_0
.end method

.method public createMaskNode(IZ)I
    .locals 5
    .parameter "nParent"
    .parameter "bRenderOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 317
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 331
    :goto_0
    return v0

    .line 320
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateScissor(I)I

    move-result v0

    .line 321
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {v0, v3, v3, v3}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    .line 324
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 325
    if-ne v4, p2, :cond_3

    .line 326
    invoke-static {v0, v4}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 329
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createNode(IZ)I
    .locals 5
    .parameter "nParent"
    .parameter "bRenderOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 284
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 298
    :goto_0
    return v0

    .line 287
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    .line 288
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 290
    :cond_2
    invoke-static {v0, v3, v3, v3}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    .line 291
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 292
    if-ne v4, p2, :cond_3

    .line 293
    invoke-static {v0, v4}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createSprite(II)I
    .locals 3
    .parameter "nParentNode"
    .parameter "nLayerCount"

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 372
    :goto_0
    return v0

    .line 360
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2, p2}, Lcom/htc/sunny/Sunny;->CreateSprite(II)I

    move-result v0

    .line 361
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 366
    :cond_2
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 368
    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 370
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createTexture()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 422
    :goto_0
    return v0

    .line 418
    :cond_0
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateTexture(I)I

    move-result v0

    .line 419
    .local v0, nTextureId:I
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deInit()V
    .locals 6

    .prologue
    .line 914
    const-string v2, "3DGlideMode"

    const-string v3, "[SunnyEngine] Sunny deInit() +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v3, p0, Lcom/htc/sunny/SunnyEngine;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 917
    :try_start_0
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-eqz v2, :cond_7

    .line 919
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 920
    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 921
    const-string v2, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SunnyEngine] deInit() ref count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    if-nez v2, :cond_2

    .line 923
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_2

    .line 924
    const-string v2, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SunnyEngine] deInit() bmp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 926
    .local v1, id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    goto :goto_0

    .line 964
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 929
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 932
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 934
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->destroyAllResource()V

    .line 936
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->destroyBackgroundResource()V

    .line 938
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    if-eqz v2, :cond_3

    .line 939
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 940
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 943
    :cond_3
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-eqz v2, :cond_5

    .line 944
    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-ne v2, v4, :cond_4

    .line 945
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->Window_UnbindSurface(I)V

    .line 948
    :cond_4
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyWindow(I)V

    .line 949
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 952
    :cond_5
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    if-eqz v2, :cond_6

    .line 953
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyScene(I)V

    .line 954
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 957
    :cond_6
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    if-eqz v2, :cond_7

    .line 958
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DeinitEnvironment(I)V

    .line 959
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 963
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 964
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    const-string v2, "3DGlideMode"

    const-string v3, "[SunnyEngine] Sunny deInit() -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return-void
.end method

.method public destroyAllResource()V
    .locals 5

    .prologue
    .line 849
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_1

    .line 850
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 852
    .local v1, id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    goto :goto_0

    .line 854
    .end local v1           #id:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 857
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_3

    .line 858
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy sprite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 860
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    goto :goto_1

    .line 862
    .end local v1           #id:Ljava/lang/Integer;
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 865
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_5

    .line 866
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 868
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    goto :goto_2

    .line 870
    .end local v1           #id:Ljava/lang/Integer;
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 873
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_7

    .line 874
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy scissor node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 876
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyScissor(I)V

    goto :goto_3

    .line 878
    .end local v1           #id:Ljava/lang/Integer;
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 880
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method public destroyBackgroundResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 887
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] destroy background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    if-eqz v0, :cond_0

    .line 889
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    .line 890
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    .line 893
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    if-eqz v0, :cond_1

    .line 894
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    .line 895
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 898
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_2

    .line 899
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    .line 900
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 903
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    if-eqz v0, :cond_3

    .line 904
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 905
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 907
    :cond_3
    return-void
.end method

.method public destroyMaskNode(I)V
    .locals 2
    .parameter "nNodeId"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroyScissor(I)V

    .line 341
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    return-void
.end method

.method public destroyNode(I)V
    .locals 2
    .parameter "nNodeId"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 308
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    return-void
.end method

.method public destroySprite(I)V
    .locals 2
    .parameter "nSpriteId"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    .line 406
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    return-void
.end method

.method public destroyTexture(I)V
    .locals 2
    .parameter "nTextureId"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    .line 432
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 434
    :cond_0
    return-void
.end method

.method public getGlobalRootNode()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    return v0
.end method

.method public getHitSprite(II)I
    .locals 1
    .parameter "nX"
    .parameter "nY"

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, -0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0, p1, p2}, Lcom/htc/sunny/Sunny;->Window_HitTest(III)I

    move-result v0

    goto :goto_0
.end method

.method public getNodeOrder(I)I
    .locals 1
    .parameter "nNodeId"

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 661
    :cond_0
    const/4 v0, 0x0

    .line 664
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->SceneNode_GetRenderOrder(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRootNode()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    return v0
.end method

.method public final getSpritePosition(I)Lcom/htc/sunny/Vector3F;
    .locals 4
    .parameter "nSpriteId"

    .prologue
    .line 237
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    .line 238
    :cond_0
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

    .line 248
    :cond_1
    :goto_0
    return-object v0

    .line 241
    :cond_2
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    .line 242
    .local v0, pos:Lcom/htc/sunny/Vector3F;
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    iget v3, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    invoke-static {v2, v3, p1}, Lcom/htc/sunny/Sunny;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 243
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 244
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 245
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public getTag(II)I
    .locals 2
    .parameter "nNodeId"
    .parameter "nDefault"

    .prologue
    .line 268
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 276
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 272
    .restart local p2
    :cond_1
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->SceneNode_GetUserFlag(I)I

    move-result v0

    .line 273
    .local v0, nFlag:I
    if-eqz v0, :cond_0

    .line 275
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    .line 276
    goto :goto_0
.end method

.method public init()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x1

    .line 85
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-ne v7, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 166
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    if-nez v1, :cond_1

    .line 88
    invoke-static {}, Lcom/htc/sunny/Sunny;->InitEnvironment()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 92
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    if-nez v0, :cond_2

    .line 94
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.InitEnvironment() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 96
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v0

    move v3, v0

    move v5, v4

    move v6, v4

    .line 90
    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->InitEnvironmentWithConfig(IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    goto :goto_1

    .line 99
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateWindow(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 100
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-nez v0, :cond_3

    .line 101
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.CreateWindow() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 103
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 106
    :cond_3
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_GetDefaultViewport(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    .line 107
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    if-nez v0, :cond_4

    .line 108
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Window_GetDefaultViewport() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 110
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 116
    :cond_4
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateScene(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 117
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    if-nez v0, :cond_5

    .line 118
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.CreateScene() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 120
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 123
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Scene_GetRootNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    .line 124
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    if-nez v0, :cond_6

    .line 125
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Scene_GetRootNode() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 127
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 129
    :cond_6
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    invoke-static {v0, v7}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 131
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 132
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    if-nez v0, :cond_7

    .line 133
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] init() fail to creat background node!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 135
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 137
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 140
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 141
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    if-nez v0, :cond_8

    .line 142
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] init() fail to creat root node!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 144
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 146
    :cond_8
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 147
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v0, v7}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 150
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Scene_GetDefaultCamera(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    .line 151
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    if-nez v0, :cond_9

    .line 152
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Scene_GetDefaultCamera() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 154
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 157
    :cond_9
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    const/high16 v1, 0x4270

    const/high16 v2, 0x4120

    const v3, 0x461c4000

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny/Sunny;->Camera_2DIsometricSetup(IFFF)V

    .line 158
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->Viewport_LinkCamera(II)V

    .line 160
    iput-boolean v7, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 162
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 163
    sget v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 164
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SunnyEngine] init() ref count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0
.end method

.method public logStatus()V
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 789
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Environment_LogStatus(I)V

    goto :goto_0
.end method

.method public renderWindow()V
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-nez v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_Render(I)V

    goto :goto_0
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;)V
    .locals 4
    .parameter "backgroundBmp"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 175
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 176
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 197
    :goto_0
    return-void

    .line 179
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-nez v0, :cond_2

    .line 180
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0, v3}, Lcom/htc/sunny/Sunny;->CreateSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 181
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_2

    .line 182
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 183
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 186
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    if-nez v0, :cond_3

    .line 187
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 190
    :cond_3
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 191
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 194
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 195
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 196
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setBackgroundSize(II)V

    goto :goto_0
.end method

.method public setBitmaptoTexture(II)Z
    .locals 2
    .parameter "nTextureId"
    .parameter "inputBitmap"

    .prologue
    const/4 v0, 0x0

    .line 632
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setClipArea(IIIII)V
    .locals 1
    .parameter "nNodeId"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/htc/sunny/Sunny;->Scissor_SetArea(IIIII)V

    goto :goto_0
.end method

.method public setNodeAlpha(II)V
    .locals 3
    .parameter "nNodeId"
    .parameter "alpha"

    .prologue
    .line 720
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    int-to-float v1, p2

    const/high16 v2, 0x437f

    div-float v0, v1, v2

    .line 725
    .local v0, groupAlpha:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    .line 726
    :cond_2
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/high16 v0, 0x3f80

    .line 728
    :cond_3
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_SetGroupAlpha(IF)V

    goto :goto_0
.end method

.method public setNodeOrder(II)V
    .locals 1
    .parameter "nNodeId"
    .parameter "renderOrder"

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetRenderOrder(II)V

    goto :goto_0
.end method

.method public setNodePosition(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    goto :goto_0
.end method

.method public setNodeRotate(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetRotate(IFFF)V

    goto :goto_0
.end method

.method public setNodeScale(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetScale(IFFF)V

    goto :goto_0
.end method

.method public setNodeVisible(IZ)V
    .locals 1
    .parameter "nNodeId"
    .parameter "bVisible"

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetVisible(IZ)V

    goto :goto_0
.end method

.method public setSpriteAlpha(III)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "alpha"

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/htc/sunny/Sunny;->Sprite_SetAlpha(III)V

    goto :goto_0
.end method

.method public setSpriteAsShadow(II)Z
    .locals 3
    .parameter "nSpriteId"
    .parameter "nLayer"

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x41

    .line 578
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 579
    :cond_0
    const/4 v0, 0x0

    .line 585
    :goto_0
    return v0

    .line 582
    :cond_1
    invoke-static {p1, p2, v2, v2, v2}, Lcom/htc/sunny/Sunny;->Sprite_SetColor(IIIII)V

    .line 583
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Sprite_SetRGBOperation(III)V

    goto :goto_0
.end method

.method public setSpriteAsShadow(IIIII)Z
    .locals 2
    .parameter "nSpriteId"
    .parameter "nLayer"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 593
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 594
    :cond_0
    const/4 v0, 0x0

    .line 600
    :goto_0
    return v0

    .line 597
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/htc/sunny/Sunny;->Sprite_SetColor(IIIII)V

    .line 598
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Sprite_SetRGBOperation(III)V

    goto :goto_0
.end method

.method public setSpriteRenderable(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bRenderable"

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetLayerRenderable(IIZ)V

    goto :goto_0
.end method

.method public setSpriteTouchable(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bTouchable"

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetTouchable(IZ)V

    goto :goto_0
.end method

.method public setSpriteVisible(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bVisible"

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetLayerVisible(IIZ)V

    goto :goto_0
.end method

.method public setTag(II)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nTag"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 260
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetUserFlag(II)V

    goto :goto_0
.end method

.method public setTextureCoordinates(IFFFF)V
    .locals 6
    .parameter "nSpriteId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const/4 v1, 0x0

    move v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    goto :goto_0
.end method

.method public setTextureCoordinates(IIFFFF)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-static/range {p1 .. p6}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    goto :goto_0
.end method

.method public setTexturetoSprite(IIII)Z
    .locals 2
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "nTextureIndex"
    .parameter "nTextureId"

    .prologue
    const/4 v0, 0x0

    .line 566
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, v0, p4}, Lcom/htc/sunny/Sunny;->Sprite_SetTexture(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public setupSpriteGeometry(IIIIII)V
    .locals 7
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "nCenterX"
    .parameter "nCenterY"

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->Sprite_SetupGeometry(IIFFFFF)V

    goto :goto_0
.end method

.method public unbindWindow()V
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-nez v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_UnbindSurface(I)V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    goto :goto_0
.end method
