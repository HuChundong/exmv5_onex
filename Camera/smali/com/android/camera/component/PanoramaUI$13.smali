.class Lcom/android/camera/component/PanoramaUI$13;
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
        "Lcom/android/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$13;->this$0:Lcom/android/camera/component/PanoramaUI;

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
            "Lcom/android/camera/rotate/UIRotation;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$13;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1700(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$13;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1700(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$13;->this$0:Lcom/android/camera/component/PanoramaUI;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI$13;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaUI;->access$1700(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v2

    new-instance v3, Lcom/android/camera/component/PanoramaUI$13$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PanoramaUI$13$1;-><init>(Lcom/android/camera/component/PanoramaUI$13;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/camera/component/PanoramaUI;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$13;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/PanoramaUI;->access$2100(Lcom/android/camera/component/PanoramaUI;Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
