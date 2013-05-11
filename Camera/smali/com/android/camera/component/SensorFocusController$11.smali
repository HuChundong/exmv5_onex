.class Lcom/android/camera/component/SensorFocusController$11;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SensorFocusController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SensorFocusController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController$11;->this$0:Lcom/android/camera/component/SensorFocusController;

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

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$11;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_SensorState:I
    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$702(Lcom/android/camera/component/SensorFocusController;I)I

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$11;->this$0:Lcom/android/camera/component/SensorFocusController;

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_SensorValues:[F
    invoke-static {v0, v2}, Lcom/android/camera/component/SensorFocusController;->access$802(Lcom/android/camera/component/SensorFocusController;[F)[F

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$11;->this$0:Lcom/android/camera/component/SensorFocusController;

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_StableSensorValues:[F
    invoke-static {v0, v2}, Lcom/android/camera/component/SensorFocusController;->access$902(Lcom/android/camera/component/SensorFocusController;[F)[F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$11;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$11;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    goto :goto_0
.end method
