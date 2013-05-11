.class Lcom/android/camera/component/SmileCaptureUI$9;
.super Ljava/lang/Object;
.source "SmileCaptureUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmileCaptureUI;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmileCaptureUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmileCaptureUI$9;->this$0:Lcom/android/camera/component/SmileCaptureUI;

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

    iget-object v1, p0, Lcom/android/camera/component/SmileCaptureUI$9;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureUI$9;->this$0:Lcom/android/camera/component/SmileCaptureUI;

    #calls: Lcom/android/camera/component/SmileCaptureUI;->isSmileCaptureEnabled()Z
    invoke-static {v0}, Lcom/android/camera/component/SmileCaptureUI;->access$200(Lcom/android/camera/component/SmileCaptureUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/camera/component/SmileCaptureUI;->showToast(Z)V
    invoke-static {v1, v0}, Lcom/android/camera/component/SmileCaptureUI;->access$300(Lcom/android/camera/component/SmileCaptureUI;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
