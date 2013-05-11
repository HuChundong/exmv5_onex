.class Lcom/android/camera/component/SensorFocusController$8;
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
        "Lcom/android/camera/AutoFocusMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SensorFocusController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SensorFocusController$8;->this$0:Lcom/android/camera/component/SensorFocusController;

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
            "Lcom/android/camera/AutoFocusMode;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/AutoFocusMode;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$8;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/android/camera/component/SensorFocusController;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$8;->this$0:Lcom/android/camera/component/SensorFocusController;

    const v1, 0x3f4ccccd

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_UnstableThreshold:F
    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$402(Lcom/android/camera/component/SensorFocusController;F)F

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$8;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$432(Lcom/android/camera/component/SensorFocusController;F)F

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/SensorFocusController$8;->this$0:Lcom/android/camera/component/SensorFocusController;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/SensorFocusController;->access$502(Lcom/android/camera/component/SensorFocusController;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/SensorFocusController$8;->this$0:Lcom/android/camera/component/SensorFocusController;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/AutoFocusMode;

    #setter for: Lcom/android/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/android/camera/AutoFocusMode;
    invoke-static {v1, v0}, Lcom/android/camera/component/SensorFocusController;->access$202(Lcom/android/camera/component/SensorFocusController;Lcom/android/camera/AutoFocusMode;)Lcom/android/camera/AutoFocusMode;

    return-void
.end method
