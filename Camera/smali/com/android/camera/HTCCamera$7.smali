.class Lcom/android/camera/HTCCamera$7;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->linkToRequiredServiceComponents()Z
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
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$7;->this$0:Lcom/android/camera/HTCCamera;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/HTCCamera$7;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mViewFinder:Lcom/android/camera/IViewFinder;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/IViewFinder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/IViewFinder;->previewSurfaceHolder:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const-string v1, "HTCCamera"

    const-string v2, "No surface holder"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera$7;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onPreviewSurfaceCreated(Landroid/view/SurfaceHolder;)V
    invoke-static {v1, v0}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera$7;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onPreviewSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    invoke-static {v1, v0}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method
