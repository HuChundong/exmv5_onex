.class Lcom/android/camera/component/BubbleToastManager$6;
.super Ljava/lang/Object;
.source "BubbleToastManager.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BubbleToastManager;->initializeOverride()V
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
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BubbleToastManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BubbleToastManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BubbleToastManager$6;->this$0:Lcom/android/camera/component/BubbleToastManager;

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
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager$6;->this$0:Lcom/android/camera/component/BubbleToastManager;

    #getter for: Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;
    invoke-static {v0}, Lcom/android/camera/component/BubbleToastManager;->access$200(Lcom/android/camera/component/BubbleToastManager;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager$6;->this$0:Lcom/android/camera/component/BubbleToastManager;

    iget-object v1, p0, Lcom/android/camera/component/BubbleToastManager$6;->this$0:Lcom/android/camera/component/BubbleToastManager;

    invoke-virtual {v1}, Lcom/android/camera/component/BubbleToastManager;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    #calls: Lcom/android/camera/component/BubbleToastManager;->updateBubbleToastRotation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/BubbleToastManager;->access$300(Lcom/android/camera/component/BubbleToastManager;Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    return-void
.end method
