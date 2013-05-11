.class Lcom/android/camera/component/ToastManager$1;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ToastManager;->initializeOverride()V
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
        "Lcom/android/camera/AutoFocusEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ToastManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ToastManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ToastManager$1;->this$0:Lcom/android/camera/component/ToastManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ToastManager$1;->this$0:Lcom/android/camera/component/ToastManager;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager$1;->this$0:Lcom/android/camera/component/ToastManager;

    #getter for: Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/android/camera/component/ToastManager;->access$000(Lcom/android/camera/component/ToastManager;)Lcom/android/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ToastManager;->cancelToast(Lcom/android/camera/Handle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/AutoFocusEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ToastManager$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method
