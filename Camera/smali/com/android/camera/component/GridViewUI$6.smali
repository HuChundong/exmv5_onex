.class Lcom/android/camera/component/GridViewUI$6;
.super Ljava/lang/Object;
.source "GridViewUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/GridViewUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/imaging/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/GridViewUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/GridViewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/GridViewUI$6;->this$0:Lcom/android/camera/component/GridViewUI;

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
            "Lcom/android/camera/imaging/Size;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/component/GridViewUI$6;->this$0:Lcom/android/camera/component/GridViewUI;

    iget-object v0, p0, Lcom/android/camera/component/GridViewUI$6;->this$0:Lcom/android/camera/component/GridViewUI;

    invoke-virtual {v0}, Lcom/android/camera/component/GridViewUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/GridViewUI$6;->this$0:Lcom/android/camera/component/GridViewUI;

    invoke-virtual {v0}, Lcom/android/camera/component/GridViewUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGridVisible:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    #calls: Lcom/android/camera/component/GridViewUI;->showGridViewUI(Z)V
    invoke-static {v1, v0}, Lcom/android/camera/component/GridViewUI;->access$000(Lcom/android/camera/component/GridViewUI;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
