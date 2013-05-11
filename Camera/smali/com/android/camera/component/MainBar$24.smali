.class Lcom/android/camera/component/MainBar$24;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->showPopup(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$24;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutsideTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/MainBar$24;->this$0:Lcom/android/camera/component/MainBar;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/android/camera/component/MainBar;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar$24;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/input/MotionEventArgs;

    invoke-direct {v1, p2}, Lcom/android/camera/input/MotionEventArgs;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method
