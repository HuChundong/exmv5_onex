.class public Lcom/htc/videowidget/videoview/widget/CameraButton;
.super Landroid/widget/RelativeLayout;
.source "CameraButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;
    }
.end annotation


# static fields
.field private static final MINIMUM_STORAGE_SPACE:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "CameraButton"


# instance fields
.field private mCaptureViewButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mImageTask:Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

.field private mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

.field private mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 66
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mImageTask:Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    .line 157
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CameraButton$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/CameraButton$1;-><init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 164
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CameraButton$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/CameraButton$2;-><init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 96
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->init(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 66
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mImageTask:Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    .line 157
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CameraButton$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/CameraButton$1;-><init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 164
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CameraButton$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/CameraButton$2;-><init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 102
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->init(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 66
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mImageTask:Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    .line 157
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CameraButton$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/CameraButton$1;-><init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 164
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CameraButton$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/CameraButton$2;-><init>(Lcom/htc/videowidget/videoview/widget/CameraButton;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 108
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method static synthetic access$002(Lcom/htc/videowidget/videoview/widget/CameraButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/videowidget/videoview/widget/CameraButton;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->isStorageEnough(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/videowidget/videoview/widget/CameraButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/videowidget/videoview/widget/CameraButton;Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;)Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mImageTask:Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    return-object p1
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/htc/videowidget/videoview/widget/CameraButton;
    .locals 6
    .parameter "contex"
    .parameter "root"
    .parameter "isShow"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 71
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CameraButton;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/CameraButton;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, cameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;
    if-nez p2, :cond_0

    .line 73
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setVisibility(I)V

    .line 82
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 84
    .local v2, offset:I
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 85
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 86
    const/16 v3, 0xf

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    .line 117
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;

    .line 119
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 120
    .local v1, res:Landroid/content/res/Resources;
    if-nez v1, :cond_1

    .line 122
    const-string v2, "CameraButton"

    const-string v3, "[init] res is null"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const v2, 0x6020017

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setBackgroundResource(I)V

    .line 127
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCaptureViewButton:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 128
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCaptureViewButton:Landroid/widget/ImageButton;

    .line 136
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCaptureViewButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCaptureViewButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;

    const-string v4, "videoplayer_btn_camera_shutter"

    const v5, 0x6020007

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 146
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCaptureViewButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCaptureViewButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/CameraButton;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isStorageEnough(Ljava/lang/String;)Z
    .locals 12
    .parameter "path"

    .prologue
    .line 217
    if-nez p1, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    const/4 v0, 0x0

    .line 225
    .local v0, bRet:Z
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 226
    .local v8, stat:Landroid/os/StatFs;
    if-eqz v8, :cond_0

    .line 228
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    .line 229
    .local v4, lBlockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v2, v9

    .line 230
    .local v2, lAvailableBlocks:J
    mul-long v6, v4, v2

    .line 231
    .local v6, lFreeSpace:J
    const-string v9, "CameraButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current BlockSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v9, "CameraButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current AvailableBlocks: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-wide/32 v9, 0x100000

    cmp-long v9, v6, v9

    if-lez v9, :cond_2

    .line 235
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :cond_2
    const-string v9, "CameraButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Free space not enough: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v2           #lAvailableBlocks:J
    .end local v4           #lBlockSize:J
    .end local v6           #lFreeSpace:J
    .end local v8           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 6

    .prologue
    .line 192
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 195
    :cond_0
    const/high16 v3, 0x3f80

    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setAlpha(F)V

    .line 196
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 197
    .local v0, anim:Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/CameraButton;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 198
    .local v2, endingX:F
    const-string v3, "translationX"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 199
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;

    const/high16 v4, 0x605

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 201
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 203
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 204
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mImageTask:Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;-><init>(Lcom/htc/videowidget/videoview/widget/CameraButton;Lcom/htc/videowidget/videoview/widget/CameraButton$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    check-cast v0, Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mImageTask:Lcom/htc/videowidget/videoview/widget/CameraButton$GrabImageAsyncTask;

    .line 213
    :cond_0
    return-void
.end method

.method public setMetaData(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V
    .locals 0
    .parameter "metaData"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mMetaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 114
    return-void
.end method

.method public setPlayer(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mPlayer:Lcom/htc/videowidget/videoview/IHtcPlayerAPI;

    .line 154
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 175
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 177
    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setVisibility(I)V

    .line 178
    invoke-virtual {p0, v5}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setTranslationX(F)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/widget/CameraButton;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 180
    .local v2, startingX:F
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setTranslationX(F)V

    .line 181
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 182
    .local v0, anim:Landroid/animation/AnimatorSet;
    const-string v3, "translationX"

    const/4 v4, 0x1

    new-array v4, v4, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 183
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mContext:Landroid/content/Context;

    const v4, 0x6050001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 185
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/CameraButton;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 187
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 188
    return-void
.end method
