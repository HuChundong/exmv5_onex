.class Lcom/android/camera/component/PanoramaUI$7;
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
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

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
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$300(Lcom/android/camera/component/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaUI;->getUIRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$7;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$000(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method
