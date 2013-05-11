.class public abstract Lcom/htc/album/modules/ui/widget/BaseControlBar;
.super Ljava/lang/Object;
.source "BaseControlBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HOST:",
        "Landroid/view/ViewGroup;",
        "BUTTON:",
        "Lcom/htc/album/modules/ui/widget/ControlButton",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBmpCanvas:Landroid/graphics/Canvas;

.field protected mBmpSnapShot:Landroid/graphics/Bitmap;

.field protected mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

.field protected mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

.field protected mButtons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TBUTTON;>;"
        }
    .end annotation
.end field

.field protected mId:I

.field protected mRootView:Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "THOST;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v3, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    .line 28
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 29
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 30
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 31
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mId:I

    .line 32
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    .line 33
    iput-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THOST;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    .local p1, hostView:Landroid/view/ViewGroup;,"THOST;"
    const/4 v2, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 29
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 30
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mId:I

    .line 32
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    .line 33
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    .line 41
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    .line 42
    return-void
.end method


# virtual methods
.method public addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 5
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)TBUTTON;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 50
    .local v0, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->getMaxButtonCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    .line 64
    :goto_0
    return-object v1

    .line 53
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v1

    .line 54
    .local v1, newButton:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    if-nez v1, :cond_2

    move-object v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    invoke-virtual {v1, p4}, Lcom/htc/album/modules/ui/widget/ControlButton;->setImageResource(I)V

    .line 60
    invoke-virtual {v1, p5}, Lcom/htc/album/modules/ui/widget/ControlButton;->setTextResource(I)V

    .line 61
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 62
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    goto :goto_0
.end method

.method public addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)TBUTTON;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    return-object v0
.end method

.method public addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 6
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)TBUTTON;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v4, 0x0

    .line 74
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 106
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 107
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 111
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 113
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 114
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->getButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->clear()V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    .end local v0           #button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method public findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 4
    .parameter "btnId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBUTTON;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v2, 0x0

    .line 93
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 94
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 101
    :cond_1
    :goto_0
    return-object v0

    .line 97
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 98
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    if-nez v0, :cond_1

    move-object v0, v2

    .line 99
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 187
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mId:I

    return v0
.end method

.method public abstract getMaxButtonCount()I
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 123
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 136
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 137
    const/16 v0, 0x8

    .line 139
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 143
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public isExistSnapShot()Z
    .locals 1

    .prologue
    .line 207
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 168
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 169
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 178
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 173
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 175
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 176
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)TBUTTON;"
        }
    .end annotation
.end method

.method public releaseSnapShot()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    .line 203
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    .line 204
    return-void

    .line 197
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeButton(I)V
    .locals 4
    .parameter "btnId"

    .prologue
    .line 79
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 80
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 84
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    if-eqz v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->getButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 5
    .parameter "clickListener"
    .parameter "stateListener"

    .prologue
    .line 151
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 152
    iput-object p2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    .line 153
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 154
    .local v1, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TBUTTON;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 164
    :cond_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 158
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 160
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 161
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"TBUTTON;"
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 162
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/widget/ControlButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 182
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iput p1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mId:I

    .line 183
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 128
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public snapShot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/BaseControlBar;,"Lcom/htc/album/modules/ui/widget/BaseControlBar<THOST;TBUTTON;>;"
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 213
    sget-object v1, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][snapShot]: no root..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-object v0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 218
    :cond_1
    sget-object v1, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][snapShot]: no dimension..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_3

    .line 223
    sget-object v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneScrollCacheHandler][snapShot]: new canvas..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 228
    sget-object v0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SceneScrollCacheHandler][snapShot]: new bitmap..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    .line 230
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mBmpSnapShot:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
