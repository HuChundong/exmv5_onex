.class Lcom/android/camera/component/PanoramaUI$8;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaUI;->setupPropertyChangedCallbacks()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$8;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$8;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$300(Lcom/android/camera/component/PanoramaUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$8;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1000(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$8;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1000(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI$8;->this$0:Lcom/android/camera/component/PanoramaUI;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I
    invoke-static {v2, v1}, Lcom/android/camera/component/PanoramaUI;->access$1100(Lcom/android/camera/component/PanoramaUI;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$8;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1200(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/widget/PanoramaIndicatorView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/PanoramaIndicatorView;->setDeviceOrientation(I)V

    :cond_0
    return-void
.end method
