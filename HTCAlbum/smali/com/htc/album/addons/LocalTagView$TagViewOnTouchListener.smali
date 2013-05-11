.class Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;
.super Ljava/lang/Object;
.source "LocalTagView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/LocalTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagViewOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/LocalTagView;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/LocalTagView;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/album/addons/LocalTagView$TagViewOnTouchListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 94
    instance-of v2, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v2, :cond_2

    .line 96
    check-cast p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setTagBackgroundPress()V

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 100
    .restart local p1
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 102
    instance-of v1, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v1, :cond_2

    .line 105
    check-cast p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setTagBackgroundRest()V

    .line 119
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    .restart local p1
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 110
    instance-of v2, p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    if-eqz v2, :cond_2

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .local v0, rc:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    check-cast p1, Lcom/htc/album/TagUtils/TagViewManager$TagView;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/album/TagUtils/TagViewManager$TagView;->setTagBackgroundRest()V

    goto :goto_0
.end method
