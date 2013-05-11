.class Lcom/android/camera/component/MainBar$7;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$7;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/MainBar$7;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V

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

    iget v0, p3, Lcom/android/camera/input/KeyEventArgs;->keyCode:I

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/MainBar$7;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar$7;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v0}, Lcom/android/camera/component/MainBar;->isCaptureUIBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar$7;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar$7;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar$7;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->toggleSettingsPanel()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$800(Lcom/android/camera/component/MainBar;)V

    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/input/KeyEventArgs;->setHandled()V

    :cond_1
    return-void
.end method
