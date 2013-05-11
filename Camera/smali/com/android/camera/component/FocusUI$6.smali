.class Lcom/android/camera/component/FocusUI$6;
.super Ljava/lang/Object;
.source "FocusUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/FocusUI;->registerListeners()V
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/FocusUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/FocusUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/FocusUI$6;->this$0:Lcom/android/camera/component/FocusUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/FocusUI$6;->this$0:Lcom/android/camera/component/FocusUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/FocusUI;->access$600(Lcom/android/camera/component/FocusUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showFocusFailEvent"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/FocusUI$6;->this$0:Lcom/android/camera/component/FocusUI;

    #getter for: Lcom/android/camera/component/FocusUI;->m_FocusWiget:Lcom/android/camera/widget/FocusAnimationView;
    invoke-static {v0}, Lcom/android/camera/component/FocusUI;->access$500(Lcom/android/camera/component/FocusUI;)Lcom/android/camera/widget/FocusAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/FocusAnimationView;->showFocusFail()V

    :cond_0
    return-void
.end method
