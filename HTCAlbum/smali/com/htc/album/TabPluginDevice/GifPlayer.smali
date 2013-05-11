.class public Lcom/htc/album/TabPluginDevice/GifPlayer;
.super Landroid/app/Activity;
.source "GifPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/GifPlayer$FrameByFrameData;,
        Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;,
        Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final TARGET_SIZE:I = 0xf0


# instance fields
.field private mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

.field private mIsDrm:Z

.field private mPlayDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "GIFPlayer"

    sput-object v0, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mPlayDone:Z

    .line 43
    new-instance v0, Lcom/htc/album/TabPluginDevice/GifPlayer$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$1;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mHandler:Landroid/os/Handler;

    .line 469
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/TabPluginDevice/GifPlayer;)Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/GifPlayer;Landroid/graphics/Rect;)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer;->countSampling(Landroid/graphics/Rect;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/album/TabPluginDevice/GifPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mPlayDone:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/GifPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private countSampling(Landroid/graphics/Rect;)[I
    .locals 12
    .parameter "rect"

    .prologue
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 398
    .local v4, t1:J
    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    .line 399
    .local v8, w:I
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .line 400
    .local v3, h:I
    div-int/lit16 v2, v8, 0xf0

    .line 401
    .local v2, candidateW:I
    div-int/lit16 v1, v3, 0xf0

    .line 402
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 403
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 404
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v8, v9, v10

    const/4 v10, 0x1

    aput v3, v9, v10

    .line 419
    :goto_0
    return-object v9

    .line 406
    :cond_0
    const/4 v9, 0x1

    if-le v0, v9, :cond_1

    .line 407
    const/16 v9, 0xf0

    if-le v8, v9, :cond_1

    div-int v9, v8, v0

    const/16 v10, 0xf0

    if-ge v9, v10, :cond_1

    .line 408
    add-int/lit8 v0, v0, -0x1

    .line 411
    :cond_1
    const/4 v9, 0x1

    if-le v0, v9, :cond_2

    .line 412
    const/16 v9, 0xf0

    if-le v3, v9, :cond_2

    div-int v9, v3, v0

    const/16 v10, 0xf0

    if-ge v9, v10, :cond_2

    .line 413
    add-int/lit8 v0, v0, -0x1

    .line 416
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 419
    .local v6, t2:J
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    div-int v11, v8, v0

    aput v11, v9, v10

    const/4 v10, 0x1

    div-int v11, v3, v0

    aput v11, v9, v10

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 170
    .local v0, keyCode:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mPlayDone:Z

    .line 176
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget-object v4, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x100

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 59
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    const-string v4, "drm"

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mIsDrm:Z

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, fromUri:Z
    const-string v4, "path"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 65
    const/4 v0, 0x0

    .line 69
    :cond_1
    :goto_0
    new-instance v4, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    invoke-direct {v4, p0, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    .line 71
    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/GifPlayer;->requestWindowFeature(I)Z

    .line 72
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer;->setContentView(Landroid/view/View;)V

    .line 73
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/GifPlayer;->setDefaultKeyMode(I)V

    .line 75
    if-nez v0, :cond_4

    .line 76
    new-instance v4, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    invoke-direct {v4, p0, v5, v2}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer;Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    .line 81
    :goto_1
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mIsDrm:Z

    if-eqz v4, :cond_2

    .line 82
    invoke-static {p0, v3}, Lcom/htc/opensense2/album/util/DrmManager;->consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V

    .line 87
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    new-instance v5, Lcom/htc/album/TabPluginDevice/GifPlayer$2;

    invoke-direct {v5, p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$2;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer;)V

    invoke-virtual {v4, v5}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void

    .line 66
    :cond_3
    if-eqz v3, :cond_1

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_4
    new-instance v4, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v4, p0, v5, v3, v6}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;-><init>(Lcom/htc/album/TabPluginDevice/GifPlayer;Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->release()V

    .line 124
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->FreeResource()V

    .line 128
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    .line 130
    :cond_1
    sget-object v0, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 131
    sput-object v1, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    .line 133
    :cond_2
    sget-object v0, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 114
    sget-object v0, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    const-string v1, "low memory"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 116
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 139
    sget-object v0, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->Pause()V

    .line 144
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mPlayDone:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->showIndicator(Z)V

    .line 147
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mImageView:Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->invalidate()V

    .line 151
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    sget-object v0, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/TabPluginDevice/GifPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->memUsageTrace(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #getter for: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->mStop:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$200(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer;->mGifPresenter:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->Play()V

    .line 159
    :cond_0
    return-void
.end method
