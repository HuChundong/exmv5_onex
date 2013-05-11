.class Lcom/android/camera/component/GridViewUI$4;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/GridViewUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/GridViewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/GridViewUI$4;->this$0:Lcom/android/camera/component/GridViewUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/GridViewUI$4;->this$0:Lcom/android/camera/component/GridViewUI;

    iget-object v0, p0, Lcom/android/camera/component/GridViewUI$4;->this$0:Lcom/android/camera/component/GridViewUI;

    invoke-virtual {v0}, Lcom/android/camera/component/GridViewUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isGridVisible:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/android/camera/component/GridViewUI;->showGridViewUI(Z)V
    invoke-static {v1, v0}, Lcom/android/camera/component/GridViewUI;->access$000(Lcom/android/camera/component/GridViewUI;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/GridViewUI$4;->this$0:Lcom/android/camera/component/GridViewUI;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/GridViewUI;->showGridViewUI(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/GridViewUI;->access$000(Lcom/android/camera/component/GridViewUI;Z)V

    goto :goto_0
.end method
