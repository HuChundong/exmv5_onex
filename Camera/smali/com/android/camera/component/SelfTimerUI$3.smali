.class Lcom/android/camera/component/SelfTimerUI$3;
.super Ljava/lang/Object;
.source "SelfTimerUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


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
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SelfTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SelfTimerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #calls: Lcom/android/camera/component/SelfTimerUI;->initializeUI()V
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$200(Lcom/android/camera/component/SelfTimerUI;)V

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$300(Lcom/android/camera/component/SelfTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    invoke-virtual {v1}, Lcom/android/camera/component/SelfTimerUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    iget-object v1, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/SelfTimerUI;->access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/component/SelfTimerUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    iget-object v1, p0, Lcom/android/camera/component/SelfTimerUI$3;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/SelfTimerUI;->access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/camera/component/SelfTimerUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
