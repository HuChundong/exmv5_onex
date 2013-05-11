.class Lcom/android/camera/component/CaptureBar$4;
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
        "Lcom/android/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$4;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/CaptureBar$4;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$4;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p3, Lcom/android/camera/input/KeyEventArgs;->keyEvent:Landroid/view/KeyEvent;

    #calls: Lcom/android/camera/component/CaptureBar;->onKeyDown(Landroid/view/KeyEvent;)Z
    invoke-static {v0, v1}, Lcom/android/camera/component/CaptureBar;->access$1300(Lcom/android/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/camera/input/KeyEventArgs;->setHandled()V

    :cond_0
    return-void
.end method
