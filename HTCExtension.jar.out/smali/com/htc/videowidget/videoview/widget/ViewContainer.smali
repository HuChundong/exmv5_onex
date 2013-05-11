.class public Lcom/htc/videowidget/videoview/widget/ViewContainer;
.super Landroid/widget/RelativeLayout;
.source "ViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/ViewContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/ViewContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;->onSizeChanged(IIII)V

    .line 53
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/ViewContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/ViewContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;

    invoke-interface {v0, p1}, Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/ViewContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;

    .line 47
    return-void
.end method
