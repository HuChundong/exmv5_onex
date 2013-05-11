.class Lcom/android/camera/component/SelfTimerUI$1;
.super Ljava/lang/Object;
.source "SelfTimerUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SelfTimerUI;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/SelfTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SelfTimerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SelfTimerUI$1;->this$0:Lcom/android/camera/component/SelfTimerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3
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

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$1;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$1;->this$0:Lcom/android/camera/component/SelfTimerUI;

    iget-object v1, p0, Lcom/android/camera/component/SelfTimerUI$1;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/SelfTimerUI;->access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/component/SelfTimerUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method
