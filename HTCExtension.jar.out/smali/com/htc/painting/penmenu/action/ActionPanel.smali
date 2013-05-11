.class public Lcom/htc/painting/penmenu/action/ActionPanel;
.super Landroid/widget/FrameLayout;
.source "ActionPanel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActionPanel"


# instance fields
.field private mActionViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/action/ActionView;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/OnActionPerformListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/painting/penmenu/action/ActionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/painting/penmenu/action/ActionPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mListener:Ljava/util/List;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu/action/ActionPanel;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "event"

    .prologue
    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 244
    .local v10, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 245
    .local v11, y:F
    invoke-direct {p0, v10, v11}, Lcom/htc/painting/penmenu/action/ActionPanel;->isValideArea(FF)Z

    move-result v9

    .line 247
    .local v9, ret:Z
    iget-object v12, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v12}, Lcom/htc/painting/penmenu/PenMenu;->getActionList()Ljava/util/List;

    move-result-object v2

    .line 248
    .local v2, actionList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/action/ActionItem;>;"
    const/4 v12, 0x1

    if-ne v9, v12, :cond_0

    iget-object v12, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 278
    :cond_0
    return v9

    .line 253
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 254
    .local v5, item:Lcom/htc/painting/penmenu/action/ActionItem;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/htc/painting/penmenu/action/ActionPanel;->toRadius(FF)D

    move-result-wide v7

    .line 255
    .local v7, r:D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/htc/painting/penmenu/action/ActionPanel;->toAngle(FF)D

    move-result-wide v0

    .line 257
    .local v0, a:D
    double-to-float v12, v7

    double-to-float v13, v0

    invoke-virtual {v5, v12, v13}, Lcom/htc/painting/penmenu/action/ActionItem;->contain(FF)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_2

    .line 260
    sget-boolean v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v12, :cond_3

    .line 261
    const-string v12, "ActionPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMotionEvent got focus action id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->isActive()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 265
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->changeState()V

    .line 266
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->startAnim()V

    .line 267
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->invalidate()V

    .line 268
    iget-object v12, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mListener:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/painting/penmenu/OnActionPerformListener;

    .line 269
    .local v6, listener:Lcom/htc/painting/penmenu/OnActionPerformListener;
    invoke-virtual {v5}, Lcom/htc/painting/penmenu/action/ActionItem;->getActionId()I

    move-result v12

    invoke-interface {v6, v12}, Lcom/htc/painting/penmenu/OnActionPerformListener;->onActionPerform(I)Z

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, -0x2

    .line 55
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20801c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    .line 62
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, backgroundView:Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/htc/painting/penmenu/action/ActionPanel;->addView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method private isValideArea(FF)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getWidth()I

    move-result v7

    .line 203
    .local v7, w:I
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getHeight()I

    move-result v2

    .line 204
    .local v2, h:I
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_0

    .line 205
    const-string v8, "ActionPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValideArea - w: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; event x: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v8, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v8}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v8

    int-to-float v3, v8

    .line 210
    .local v3, innerRadius:F
    iget v8, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    int-to-float v4, v8

    .line 212
    .local v4, outerRadius:F
    int-to-float v8, v7

    sub-float/2addr v8, v4

    cmpg-float v8, p1, v8

    if-ltz v8, :cond_1

    int-to-float v8, v2

    sub-float/2addr v8, v4

    cmpg-float v8, p2, v8

    if-gez v8, :cond_4

    .line 213
    :cond_1
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_2

    .line 214
    const-string v8, "ActionPanel"

    const-string v9, "isValideArea - false"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_2
    const/4 v5, 0x0

    .line 233
    :cond_3
    :goto_0
    return v5

    .line 219
    :cond_4
    const/4 v5, 0x0

    .line 221
    .local v5, ret:Z
    int-to-float v8, v7

    sub-float v0, v8, p1

    .line 222
    .local v0, dx:F
    int-to-float v8, v2

    sub-float v1, v8, p2

    .line 223
    .local v1, dy:F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float v6, v8, v9

    .line 225
    .local v6, rr:F
    mul-float v8, v3, v3

    cmpg-float v8, v8, v6

    if-gez v8, :cond_5

    mul-float v8, v4, v4

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_5

    .line 226
    const/4 v5, 0x1

    .line 229
    :cond_5
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_3

    .line 230
    const-string v8, "ActionPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValideArea - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processPenEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 294
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "ActionPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenEvent - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    :cond_1
    const-string v0, "ActionPanel"

    const-string v1, "onPenEvent - receive event after destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/action/ActionPanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 307
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "ActionPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent - action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu/PenMenu;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    :cond_1
    const-string v1, "ActionPanel"

    const-string v2, "onTouchEvent - receive event after destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v1, 0x0

    .line 322
    :goto_0
    return v1

    .line 316
    :cond_2
    invoke-static {p1}, Lcom/htc/pen/PenEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 317
    .local v0, isPen:Z
    if-eqz v0, :cond_3

    .line 318
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/action/ActionPanel;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/penmenu/action/ActionPanel;->isValideArea(FF)Z

    move-result v1

    goto :goto_0
.end method

.method private setupActionViews()V
    .locals 15

    .prologue
    const/4 v13, -0x2

    const/high16 v14, 0x42b4

    .line 101
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v11, :cond_1

    .line 102
    const-string v11, "ActionPanel"

    const-string v12, "setupActionViews - PenMenu not be set yet!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getActionList()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, actionList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/action/ActionItem;>;"
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getActionCount()I

    move-result v5

    .line 109
    .local v5, count:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-le v5, v11, :cond_2

    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 114
    :cond_2
    int-to-float v11, v5

    const/high16 v12, 0x4000

    mul-float/2addr v11, v12

    div-float v4, v14, v11

    .line 115
    .local v4, beginAngle:F
    int-to-float v11, v5

    div-float v3, v14, v11

    .line 116
    .local v3, angleRange:F
    move v2, v4

    .line 117
    .local v2, angle:F
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v7

    .line 118
    .local v7, innerRadius:I
    iget v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    sub-int v9, v11, v7

    .line 120
    .local v9, radiusRange:I
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x55

    invoke-direct {v8, v13, v13, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 122
    .local v8, params:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 123
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 124
    .local v0, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    if-eqz v0, :cond_3

    .line 127
    int-to-float v11, v7

    int-to-float v12, v9

    int-to-float v13, v6

    mul-float/2addr v13, v3

    invoke-virtual {v0, v11, v12, v13, v3}, Lcom/htc/painting/penmenu/action/ActionItem;->setPosition(FFFF)V

    .line 128
    new-instance v10, Lcom/htc/painting/penmenu/action/ActionView;

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/htc/painting/penmenu/action/ActionView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v10, view:Lcom/htc/painting/penmenu/action/ActionView;
    invoke-virtual {v10, p0}, Lcom/htc/painting/penmenu/action/ActionView;->setActionPanel(Lcom/htc/painting/penmenu/action/ActionPanel;)V

    .line 130
    invoke-virtual {v10, v8}, Lcom/htc/painting/penmenu/action/ActionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v10, v0}, Lcom/htc/painting/penmenu/action/ActionView;->setActionItem(Lcom/htc/painting/penmenu/action/ActionItem;)V

    .line 132
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v11}, Lcom/htc/painting/penmenu/PenMenu;->getBasePanelSize()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/action/ActionView;->setInnerRadius(I)V

    .line 133
    iget v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    invoke-virtual {v10, v11}, Lcom/htc/painting/penmenu/action/ActionView;->setSize(I)V

    .line 134
    iget-object v11, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0, v10}, Lcom/htc/painting/penmenu/action/ActionPanel;->addView(Landroid/view/View;)V

    .line 138
    .end local v10           #view:Lcom/htc/painting/penmenu/action/ActionView;
    :cond_3
    int-to-float v11, v5

    div-float v11, v14, v11

    add-float/2addr v2, v11

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private toAngle(FF)D
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, p1

    .line 334
    .local v3, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, p2

    .line 335
    .local v2, h:F
    div-float v4, v2, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 336
    .local v0, arc:D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private toRadius(FF)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v2, p1

    .line 348
    .local v1, w:F
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 349
    .local v0, h:F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public addOnActionClickListener(Lcom/htc/painting/penmenu/OnActionPerformListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public getDockCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getCorner()Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/painting/penmenu/PenMenu$DockCorner;->RIGHT_BOTTOM:Lcom/htc/painting/penmenu/PenMenu$DockCorner;

    goto :goto_0
.end method

.method public getPenMenuSize()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu/PenMenu;->getSize()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mSize:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 287
    invoke-static {p1}, Lcom/htc/pen/PenEvent;->isPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/action/ActionPanel;->processPenEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/action/ActionPanel;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->removeAllViews()V

    .line 359
    iget-object v0, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    return-void
.end method

.method public resetActions()V
    .locals 6

    .prologue
    .line 147
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    if-nez v4, :cond_1

    .line 148
    const-string v4, "ActionPanel"

    const-string v5, "resetActions - PenMenu not be set yet!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu;->getActionList()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, actionList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/action/ActionItem;>;"
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v4}, Lcom/htc/painting/penmenu/PenMenu;->getActionCount()I

    move-result v2

    .line 154
    .local v2, count:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 158
    :cond_2
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_4

    .line 160
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 161
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/htc/painting/penmenu/action/ActionPanel;->removeView(Landroid/view/View;)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    :cond_3
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 164
    invoke-direct {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->setupActionViews()V

    goto :goto_0

    .line 168
    .end local v3           #i:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 169
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/action/ActionItem;

    .line 170
    .local v0, actionItem:Lcom/htc/painting/penmenu/action/ActionItem;
    iget-object v4, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mActionViewList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/penmenu/action/ActionView;

    invoke-virtual {v4, v0}, Lcom/htc/painting/penmenu/action/ActionView;->setActionItem(Lcom/htc/painting/penmenu/action/ActionItem;)V

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public setPenMenu(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "penMenu"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/painting/penmenu/action/ActionPanel;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 183
    invoke-direct {p0}, Lcom/htc/painting/penmenu/action/ActionPanel;->setupActionViews()V

    .line 184
    return-void
.end method
