.class public Lcom/htc/sunnyCore/view/SViewGroup;
.super Lcom/htc/sunnyCore/view/SView;
.source "SViewGroup.java"

# interfaces
.implements Lcom/htc/sunnyCore/view/SViewParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;,
        Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V
    .locals 0
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 0
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/sunnyCore/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V
    .locals 0
    .parameter "mode"
    .parameter "context"
    .parameter "sContext"
    .parameter "bRenderOrder"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunnyCore/view/SView;-><init>(Lcom/htc/sunnyCore/SceneNode$NODE_MODE;Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Z)V

    .line 26
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 326
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 327
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 329
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 331
    .local v2, size:I
    const/4 v1, 0x0

    .line 332
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 334
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 390
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 337
    :sswitch_0
    if-ltz p2, :cond_1

    .line 338
    move v1, p2

    .line 339
    const/high16 v0, 0x4000

    goto :goto_0

    .line 340
    :cond_1
    if-ne p2, v8, :cond_2

    .line 342
    move v1, v2

    .line 343
    const/high16 v0, 0x4000

    goto :goto_0

    .line 344
    :cond_2
    if-ne p2, v7, :cond_0

    .line 347
    move v1, v2

    .line 348
    const/high16 v0, -0x8000

    goto :goto_0

    .line 354
    :sswitch_1
    if-ltz p2, :cond_3

    .line 356
    move v1, p2

    .line 357
    const/high16 v0, 0x4000

    goto :goto_0

    .line 358
    :cond_3
    if-ne p2, v8, :cond_4

    .line 361
    move v1, v2

    .line 362
    const/high16 v0, -0x8000

    goto :goto_0

    .line 363
    :cond_4
    if-ne p2, v7, :cond_0

    .line 366
    move v1, v2

    .line 367
    const/high16 v0, -0x8000

    goto :goto_0

    .line 373
    :sswitch_2
    if-ltz p2, :cond_5

    .line 375
    move v1, p2

    .line 376
    const/high16 v0, 0x4000

    goto :goto_0

    .line 377
    :cond_5
    if-ne p2, v8, :cond_6

    .line 380
    const/4 v1, 0x0

    .line 381
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_6
    if-ne p2, v7, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 386
    const/4 v0, 0x0

    goto :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SViewGroup;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 167
    iget-object v0, p1, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eq v0, p0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    invoke-virtual {p1, p0}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public addView(Lcom/htc/sunnyCore/view/SView;Z)V
    .locals 4
    .parameter "view"
    .parameter "bTopRender"

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 203
    :cond_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SViewGroup;->addView(Lcom/htc/sunnyCore/view/SView;)V

    .line 192
    const/4 v3, 0x1

    if-ne v3, p2, :cond_3

    .line 193
    const/16 v3, 0x64

    invoke-virtual {p1, v3}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/SceneNode;

    .line 199
    .local v2, node:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 200
    check-cast v0, Lcom/htc/sunnyCore/view/SView;

    .line 201
    .local v0, child:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->getRenderOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    goto :goto_1

    .line 195
    .end local v0           #child:Lcom/htc/sunnyCore/view/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #node:Lcom/htc/sunnyCore/SceneNode;
    :cond_3
    const/16 v3, -0x64

    invoke-virtual {p1, v3}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    goto :goto_0
.end method

.method public addViewWithoutLayout(Lcom/htc/sunnyCore/view/SView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SViewGroup;->addSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 147
    iget-object v0, p1, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eq v0, p0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    invoke-virtual {p1, p0}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->setRenderOrder(I)V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, handled:Z
    if-ne v0, v1, :cond_0

    .line 97
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchRenderOrderChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SView;->dispatchRenderOrderChanged(Z)V

    .line 48
    iget-object v2, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/SceneNode;

    .line 49
    .local v1, node:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/sunnyCore/view/SView;

    if-eqz v2, :cond_0

    .line 50
    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    .end local v1           #node:Lcom/htc/sunnyCore/SceneNode;
    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/view/SView;->dispatchRenderOrderChanged(Z)V

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public dispatchResourceCreation(Z)V
    .locals 3
    .parameter "isCreated"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 107
    iget-object v2, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/SceneNode;

    .line 108
    .local v1, node:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/sunnyCore/view/SView;

    if-eqz v2, :cond_0

    .line 109
    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    .end local v1           #node:Lcom/htc/sunnyCore/SceneNode;
    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    goto :goto_0

    .line 111
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/SceneNode;

    .line 60
    .local v1, node:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/sunnyCore/view/SView;

    if-eqz v2, :cond_0

    .line 61
    check-cast v1, Lcom/htc/sunnyCore/view/SView;

    .end local v1           #node:Lcom/htc/sunnyCore/SceneNode;
    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/view/SView;->setPressed(Z)V

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 5
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v3, 0x1

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, handled:Z
    iget-object v4, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/SceneNode;

    .line 72
    .local v2, node:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/htc/sunnyCore/view/SView;

    if-eqz v4, :cond_0

    .line 73
    check-cast v2, Lcom/htc/sunnyCore/view/SView;

    .end local v2           #node:Lcom/htc/sunnyCore/SceneNode;
    invoke-virtual {v2, p1, p2}, Lcom/htc/sunnyCore/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 74
    if-ne v0, v3, :cond_0

    .line 79
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/sunnyCore/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChild(Lcom/htc/sunnyCore/view/SView;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/htc/sunnyCore/view/SView;->getLayoutParams()Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    move-result-object v2

    .line 265
    .local v2, lp:Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/htc/sunnyCore/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 267
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    iget v4, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/htc/sunnyCore/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 270
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Lcom/htc/sunnyCore/view/SView;->measure(II)V

    .line 271
    return-void
.end method

.method protected measureChildWithMargins(Lcom/htc/sunnyCore/view/SView;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/htc/sunnyCore/view/SView;->getLayoutParams()Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;

    .line 294
    .local v2, lp:Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/htc/sunnyCore/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 297
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingTop:I

    iget v4, p0, Lcom/htc/sunnyCore/view/SView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/htc/sunnyCore/view/SViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Lcom/htc/sunnyCore/view/SViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/htc/sunnyCore/view/SViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 301
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Lcom/htc/sunnyCore/view/SView;->measure(II)V

    .line 302
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 239
    iget-object v4, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 240
    .local v3, size:I
    const/4 v4, 0x1

    new-array v1, v4, [Lcom/htc/sunnyCore/view/SView;

    .line 241
    .local v1, children:[Lcom/htc/sunnyCore/view/SView;
    iget-object v4, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #children:[Lcom/htc/sunnyCore/view/SView;
    check-cast v1, [Lcom/htc/sunnyCore/view/SView;

    .line 242
    .restart local v1       #children:[Lcom/htc/sunnyCore/view/SView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 243
    aget-object v0, v1, v2

    .line 244
    .local v0, child:Lcom/htc/sunnyCore/view/SView;
    iget v4, v0, Lcom/htc/sunnyCore/view/SView;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 245
    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/sunnyCore/view/SViewGroup;->measureChild(Lcom/htc/sunnyCore/view/SView;II)V

    .line 242
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v0           #child:Lcom/htc/sunnyCore/view/SView;
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Lcom/htc/sunnyCore/view/SView;->onDetachedFromWindow()V

    .line 119
    iget-object v3, p0, Lcom/htc/sunnyCore/SceneNode;->mChilds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/SceneNode;

    .line 120
    .local v2, node:Lcom/htc/sunnyCore/SceneNode;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/htc/sunnyCore/view/SView;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 121
    check-cast v0, Lcom/htc/sunnyCore/view/SView;

    .line 122
    .local v0, child:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/SView;->onDetachedFromWindow()V

    .line 123
    invoke-virtual {p0, v0}, Lcom/htc/sunnyCore/view/SViewGroup;->removeView(Lcom/htc/sunnyCore/view/SView;)V

    goto :goto_0

    .line 125
    .end local v0           #child:Lcom/htc/sunnyCore/view/SView;
    .end local v2           #node:Lcom/htc/sunnyCore/SceneNode;
    :cond_1
    return-void
.end method

.method public removeView(Lcom/htc/sunnyCore/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->setParent(Lcom/htc/sunnyCore/view/SViewParent;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/view/SViewGroup;->removeSceneNode(Lcom/htc/sunnyCore/SceneNode;)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunnyCore/view/SView;->dispatchResourceCreation(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/htc/sunnyCore/view/SViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public showContextMenuForChild(Lcom/htc/sunnyCore/view/SView;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/view/SView;->mParentView:Lcom/htc/sunnyCore/view/SViewParent;

    invoke-interface {v0, p1}, Lcom/htc/sunnyCore/view/SViewParent;->showContextMenuForChild(Lcom/htc/sunnyCore/view/SView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
