.class Lcom/android/camera/component/CaptureBar$6;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->setupEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/input/MotionEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$6;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/input/MotionEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/CaptureBar$6;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/MotionEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/MotionEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/MotionEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/input/MotionEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$6;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p3, Lcom/android/camera/input/MotionEventArgs;->motionEvent:Landroid/view/MotionEvent;

    #calls: Lcom/android/camera/component/CaptureBar;->onPopMenuOutsideTouched(Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1}, Lcom/android/camera/component/CaptureBar;->access$1500(Lcom/android/camera/component/CaptureBar;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/camera/input/MotionEventArgs;->setHandled()V

    :cond_0
    return-void
.end method
