.class public final Lcom/android/camera/widget/PanoramaTrackingView;
.super Landroid/view/View;
.source "PanoramaTrackingView.java"


# static fields
.field private static final DELTA_UPDATE_INTERVAL:I = 0x1e

.field private static final MSG_UPDATE_DELTA:I = 0x2711


# instance fields
.field private m_CurrentDeltaXY:Landroid/graphics/PointF;

.field private m_DeltaXY:Landroid/graphics/PointF;

.field private final m_Handler:Landroid/os/Handler;

.field private m_IsTrackingBoxActivated:Z

.field private m_PanoramaDirection:I

.field private final m_TrackingBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_TrackingBoxDrawableActive:Landroid/graphics/drawable/Drawable;

.field private m_TrackingBoxOverlap:F

.field private m_TrackingBoxPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaXY:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    const v1, 0x3e4ccccd

    iput v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxOverlap:F

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxDrawableActive:Landroid/graphics/drawable/Drawable;

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    new-instance v1, Lcom/android/camera/widget/PanoramaTrackingView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PanoramaTrackingView$1;-><init>(Lcom/android/camera/widget/PanoramaTrackingView;)V

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/PanoramaTrackingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->updateDeltaXY()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PanoramaTrackingView;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/PanoramaTrackingView;->drawTrackingBox(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private drawTrackingBox(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_IsTrackingBoxActivated:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxDrawableActive:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateDeltaXY()V
    .locals 9

    const v8, 0x3dcccccd

    const v7, 0x3c23d70a

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaXY:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaXY:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v2, v3, v4

    const/4 v0, 0x0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, v3, Landroid/graphics/PointF;->x:F

    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaXY:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, v3, Landroid/graphics/PointF;->y:F

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_Handler:Landroid/os/Handler;

    const/16 v4, 0x2711

    const-wide/16 v5, 0x1e

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    cmpl-float v3, v1, v6

    if-gtz v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    cmpg-float v3, v1, v6

    if-gez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    const v5, 0x3f333333

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    mul-float v5, v1, v8

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    cmpg-float v3, v2, v6

    if-ltz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_8

    cmpl-float v3, v2, v6

    if-lez v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f40

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    mul-float v5, v2, v8

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method


# virtual methods
.method public activateTrackingBox()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_IsTrackingBoxActivated:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    return-void
.end method

.method public deactivateTrackingBox()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_IsTrackingBoxActivated:Z

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaTrackingView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaTrackingView;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    mul-int/lit8 v8, v14, 0x2

    if-le v13, v8, :cond_0

    if-le v12, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v6, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget v7, v14, Landroid/graphics/PointF;->y:F

    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxOverlap:F

    sub-float/2addr v14, v15

    mul-float/2addr v7, v14

    int-to-float v14, v13

    mul-float/2addr v14, v7

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v3, v14, v15

    if-ge v3, v13, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxOverlap:F

    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxOverlap:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v15, v6

    add-float v10, v14, v15

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v10

    int-to-float v15, v12

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v5, v14, v15

    :goto_1
    if-ge v5, v12, :cond_0

    sub-int v14, v13, v8

    add-int v4, v3, v14

    if-lez v4, :cond_0

    sub-int v14, v12, v8

    add-int v2, v5, v14

    if-lez v2, :cond_0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v3, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_IsTrackingBoxActivated:Z

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/camera/widget/PanoramaTrackingView;->drawTrackingBox(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxOverlap:F

    neg-float v14, v14

    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxOverlap:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v15, v6

    add-float v10, v14, v15

    const/high16 v14, -0x4080

    sub-float/2addr v14, v10

    int-to-float v15, v12

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/widget/PanoramaTrackingView;->m_TrackingBoxPadding:I

    add-int v5, v14, v15

    goto :goto_1

    :cond_3
    new-instance v11, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v13

    move/from16 v16, v0

    int-to-float v0, v12

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v11, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaTrackingView;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/android/camera/widget/PanoramaTrackingView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1, v9}, Lcom/android/camera/widget/PanoramaTrackingView$2;-><init>(Lcom/android/camera/widget/PanoramaTrackingView;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v14, v0, v11, v15}, Lcom/android/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public resetDeltaXY()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaXY:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    return-void
.end method

.method public setDeltaXY(FF)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    const/4 p2, 0x0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaXY:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->updateDeltaXY()V

    :cond_2
    return-void

    :pswitch_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x4000

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 p1, 0x4000

    goto :goto_0

    :pswitch_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const/high16 v0, -0x4000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 p1, -0x4000

    goto :goto_0

    :cond_5
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    const/high16 p2, 0x3f80

    goto :goto_1

    :cond_6
    const/high16 v0, -0x4080

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    const/high16 p2, -0x4080

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPanoramaDirection(I)V
    .locals 2

    const/16 v1, 0x2711

    iput p1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_PanoramaDirection:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_CurrentDeltaXY:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/camera/widget/PanoramaTrackingView;->m_DeltaXY:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaTrackingView;->invalidate()V

    return-void
.end method
