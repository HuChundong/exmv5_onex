.class Lcom/android/camera/component/BubbleToastManager$3;
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

    iput-object p1, p0, Lcom/android/camera/component/BubbleToastManager$3;->this$0:Lcom/android/camera/component/BubbleToastManager;

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

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager$3;->this$0:Lcom/android/camera/component/BubbleToastManager;

    #calls: Lcom/android/camera/component/BubbleToastManager;->showBubbleToast()V
    invoke-static {v0}, Lcom/android/camera/component/BubbleToastManager;->access$000(Lcom/android/camera/component/BubbleToastManager;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager$3;->this$0:Lcom/android/camera/component/BubbleToastManager;

    #calls: Lcom/android/camera/component/BubbleToastManager;->hideBubbleToast()V
    invoke-static {v0}, Lcom/android/camera/component/BubbleToastManager;->access$100(Lcom/android/camera/component/BubbleToastManager;)V

    goto :goto_0
.end method
