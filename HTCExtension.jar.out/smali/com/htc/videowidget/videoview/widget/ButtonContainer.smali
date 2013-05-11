.class public Lcom/htc/videowidget/videoview/widget/ButtonContainer;
.super Landroid/widget/LinearLayout;
.source "ButtonContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ButtonContainer"


# instance fields
.field private mListener:Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;

    .line 46
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;

    .line 52
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 62
    const-string v0, "ButtonContainer"

    const-string v1, "onTouchEvent"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;

    invoke-interface {v0, p1}, Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 65
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->mListener:Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;

    .line 35
    return-void
.end method
