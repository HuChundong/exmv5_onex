.class public Lcom/htc/lockscreen/view/HtcLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "HtcLockPatternView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "HtcLockPatternView"


# instance fields
.field private final COMMON_RES:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lockscreen/view/HtcLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string v0, "com.htc.lockscreen"

    iput-object v0, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->COMMON_RES:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resContext"
    .parameter "resId"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIconId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "resContext"
    .parameter "resName"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_0

    .line 104
    move-object p1, v0

    .line 106
    :cond_0
    const-string v2, "com.htc.lockscreen"

    invoke-static {v0, p1, v2, p2}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconIdFromPackage(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, id:I
    const-string v2, "HtcLockPatternView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconId resName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v1
.end method

.method private static getIconIdFromPackage(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "resContext"
    .parameter "pkg"
    .parameter "resName"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v1, p3, v2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 119
    :cond_0
    const-string v1, "HtcLockPatternView"

    const-string v2, "getIconIdFromPackage no lockscreen"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcLockPatternView"

    const-string v2, "getIconIdFromPackage exception"

    invoke-static {v1, v2, v0}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getIconIdFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "pkg"
    .parameter "resName"

    .prologue
    .line 129
    invoke-static {p0, p1}, Lcom/htc/lockscreen/internal/LSUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, resContext:Landroid/content/Context;
    invoke-static {p0, v0, p1, p2}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconIdFromPackage(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method protected loadAssets(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 35
    .local v10, r:Landroid/content/res/Resources;
    sget-object v13, Lcom/htc/R$styleable;->HtcLockPatternView:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 37
    .local v2, a:Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 38
    .local v4, btnResId:I
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 39
    .local v3, btnPressResId:I
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 40
    .local v5, circleDefId:I
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 41
    .local v6, circleGreenId:I
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 43
    .local v7, circleRedId:I
    const-string v13, "com.htc.lockscreen"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/htc/lockscreen/internal/LSUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v9

    .line 44
    .local v9, lsContext:Landroid/content/Context;
    move-object/from16 v12, p1

    .line 45
    .local v12, resContext:Landroid/content/Context;
    if-lez v4, :cond_0

    if-lez v3, :cond_0

    if-lez v5, :cond_0

    if-lez v6, :cond_0

    if-gtz v7, :cond_1

    .line 50
    :cond_0
    move-object v12, v9

    .line 51
    const-string v13, "lockscreen_point_lock_default"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 52
    const-string v13, "lockscreen_point_lock_touched"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 53
    const-string v13, "lockscreen_point_default"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 54
    const-string v13, "lockscreen_point_green"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 55
    const-string v13, "lockscreen_point_red"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 58
    :cond_1
    const-string v13, "lockscreen_drag_direction_green"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 59
    .local v8, greenId:I
    const-string v13, "lockscreen_drag_direction_red"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    .line 61
    .local v11, redId:I
    if-lez v8, :cond_2

    if-lez v11, :cond_2

    if-lez v4, :cond_2

    if-lez v3, :cond_2

    if-lez v5, :cond_2

    if-lez v6, :cond_2

    if-gtz v7, :cond_3

    .line 68
    :cond_2
    const-string v13, "HtcLockPatternView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAssets fail: greenId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " redId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " btnResId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " btnPressResId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " circleDefId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " circleGreenId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " circleRedId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super/range {p0 .. p2}, Lcom/android/internal/widget/LockPatternView;->loadAssets(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    :goto_0
    return-void

    .line 79
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 80
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 81
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 82
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 83
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 85
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 86
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapWidth:I

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mBitmapHeight:I

    goto :goto_0
.end method
