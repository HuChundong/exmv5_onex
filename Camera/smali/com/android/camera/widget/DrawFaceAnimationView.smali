.class public Lcom/android/camera/widget/DrawFaceAnimationView;
.super Landroid/view/View;
.source "DrawFaceAnimationView.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DrawFaceAnimationView"

.field private static final MSG_ANIMATE:I = 0x7d0

.field private static final MSG_DRAW_FACES:I = 0x7d1

.field private static final STROKE_COLOR:I = -0x1000000

.field private static final STROKE_WIDTH:I = 0x5


# instance fields
.field private mFaceNum:S

.field private mFacesBmp:Landroid/graphics/Bitmap;

.field private mFramePaint:Landroid/graphics/Paint;

.field private mFrametest:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mReplacedRect:[Landroid/graphics/Rect;

.field private m_Aphla:I

.field private m_CropFaceBmp:Landroid/graphics/Bitmap;

.field private m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

.field private m_FaceIndex:I

.field private m_Handler:Landroid/os/Handler;

.field private volatile m_IsAnimating:Z

.field private m_facesRectFrame:[Landroid/graphics/Rect;

.field private m_isMergeImageFadeIn:Z

.field private m_mergeBmpRect:Landroid/graphics/Rect;

.field private m_redrawIndex:I

.field private m_replaceFaceCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/widget/DrawFaceAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v2, 0x40a0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    iput-short v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_replaceFaceCnt:I

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    new-instance v0, Lcom/android/camera/widget/DrawFaceAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/DrawFaceAnimationView$1;-><init>(Lcom/android/camera/widget/DrawFaceAnimationView;)V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    iput-short v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFrametest:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_replaceFaceCnt:I

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/DrawFaceAnimationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/DrawFaceAnimationView;->doAnimate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/DrawFaceAnimationView;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    return v0
.end method

.method private doAnimate()V
    .locals 6

    const/16 v5, 0x7d1

    const/16 v4, 0xff

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_IsAnimating:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    :cond_1
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    if-lt v1, v4, :cond_4

    iput-boolean v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_IsAnimating:Z

    iput v4, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_replaceFaceCnt:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/DrawFaceAnimationView;->invalidate(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getFaceStretchBounds(Landroid/graphics/Rect;Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_4

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    :goto_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    :cond_2
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3, v4, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x32

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x32

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x32

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x32

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    goto :goto_1
.end method


# virtual methods
.method public enlargeFaceRect()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x1e

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x1e

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1e

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1e

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iput v3, v1, Landroid/graphics/Rect;->left:I

    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iput v3, v1, Landroid/graphics/Rect;->top:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getFaceNum()I
    .locals 1

    iget-short v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    return v0
.end method

.method public getFaceRect()[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMergedImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRect()[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    return-object v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CropFaceBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_CurrentFaceRectBmpBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public resetFace()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    iput-short v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_redrawIndex:I

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setFace(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setFace(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;[Landroid/graphics/Rect;S)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    array-length v1, p2

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_facesRectFrame:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    aget-object v2, p3, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-short p4, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFaceNum:S

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    if-nez v1, :cond_1

    const-string v1, "DrawFaceAnimationView"

    const-string v2, "setFace mReplacedRect == null:"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_replaceFaceCnt:I

    invoke-virtual {p0}, Lcom/android/camera/widget/DrawFaceAnimationView;->enlargeFaceRect()V

    goto :goto_1
.end method

.method public showFacesAnimation(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_isMergeImageFadeIn:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_mergeBmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mFacesBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iput v2, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Aphla:I

    iput-boolean v3, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_IsAnimating:Z

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->mReplacedRect:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, v2}, Lcom/android/camera/widget/DrawFaceAnimationView;->getFaceStretchBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public startFacesAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    iget v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/DrawFaceAnimationView;->showFacesAnimation(I)V

    return-void
.end method

.method public stopFacesAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_IsAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/camera/widget/DrawFaceAnimationView;->doAnimate()V

    :cond_0
    return-void
.end method
