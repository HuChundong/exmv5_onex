.class Lcom/android/camera/widget/PopupBubble$2;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PopupBubble;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble$2;->this$0:Lcom/android/camera/widget/PopupBubble;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/camera/widget/PopupBubble$2;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;
    invoke-static {v7}, Lcom/android/camera/widget/PopupBubble;->access$600(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    const/4 v7, 0x2

    new-array v4, v7, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v4, v9

    const/4 v7, 0x1

    aget v1, v4, v7

    add-int v2, v5, v0

    add-int v3, v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    invoke-virtual {p2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v7, p0, Lcom/android/camera/widget/PopupBubble$2;->this$0:Lcom/android/camera/widget/PopupBubble;

    #getter for: Lcom/android/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;
    invoke-static {v7}, Lcom/android/camera/widget/PopupBubble;->access$600(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;->onOutsideTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    int-to-float v7, v5

    int-to-float v8, v6

    invoke-virtual {p2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    return v9
.end method
