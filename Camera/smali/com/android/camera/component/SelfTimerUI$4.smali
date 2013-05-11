.class Lcom/android/camera/component/SelfTimerUI$4;
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
        "Lcom/android/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SelfTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SelfTimerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI$4;->this$0:Lcom/android/camera/component/SelfTimerUI;

    #getter for: Lcom/android/camera/component/SelfTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/SelfTimerUI;->access$300(Lcom/android/camera/component/SelfTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    return-void
.end method
